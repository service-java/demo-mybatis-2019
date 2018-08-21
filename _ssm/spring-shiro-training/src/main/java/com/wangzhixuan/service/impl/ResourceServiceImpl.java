package com.wangzhixuan.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.commons.result.ZTree;
import com.wangzhixuan.commons.shiro.ShiroUser;
import com.wangzhixuan.mapper.ResourceMapper;
import com.wangzhixuan.mapper.RoleMapper;
import com.wangzhixuan.mapper.RoleResourceMapper;
import com.wangzhixuan.mapper.UserRoleMapper;
import com.wangzhixuan.model.Resource;
import com.wangzhixuan.service.IResourceService;

/**
 *
 * Resource 表数据服务层接口实现类
 *
 */
@Service
public class ResourceServiceImpl extends ServiceImpl<ResourceMapper, Resource> implements IResourceService {
    private static final int RESOURCE_MENU = 0; // 菜单

    @Autowired
    private ResourceMapper resourceMapper;
    @Autowired
    private UserRoleMapper userRoleMapper;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private RoleResourceMapper roleResourceMapper;
    
    @Override
    public List<Resource> selectAll() {
        EntityWrapper<Resource> wrapper = new EntityWrapper<Resource>();
        wrapper.orderBy("seq");
        return resourceMapper.selectList(wrapper);
    }
    
    public List<Resource> selectByType(Integer type) {
        EntityWrapper<Resource> wrapper = new EntityWrapper<Resource>();
        Resource resource = new Resource();
        wrapper.setEntity(resource);
        wrapper.addFilter("resource_type = {0}", type);
        wrapper.orderBy("seq");
        return resourceMapper.selectList(wrapper);
    }
    
    @Override
    public List<ZTree> selectAllMenu() {
        List<ZTree> trees = new ArrayList<ZTree>();
        // 查询所有菜单
        List<Resource> resources = this.selectByType(RESOURCE_MENU);
        if (resources == null) {
            return trees;
        }
        for (Resource resource : resources) {
        		ZTree tree = new ZTree();
            tree.setId(resource.getId());
            tree.setpId(resource.getPid());
            tree.setName(resource.getName());
            tree.setIconSkin(resource.getIcon());
            tree.setAttributes(resource.getUrl());
            Integer opened = resource.getOpened();
            tree.setOpen(null != opened && opened == 1);
            trees.add(tree);
        }
        return trees;
    }
    
    @Override
    public List<ZTree> selectAllTree() {
        // 获取所有的资源 tree形式，展示
        List<ZTree> trees = new ArrayList<ZTree>();
        List<Resource> resources = this.selectAll();
        if (resources == null) {
            return trees;
        }
        for (Resource resource : resources) {
    			ZTree tree = new ZTree();
            tree.setId(resource.getId());
            tree.setpId(resource.getPid());
            tree.setName(resource.getName());
            tree.setIconSkin(resource.getIcon());
            tree.setAttributes(resource.getUrl());
            Integer opened = resource.getOpened();
            tree.setOpen(null != opened && opened == 1);
            trees.add(tree);
        }
        return trees;
    }
    
    @Override
    public List<ZTree> selectTree(ShiroUser shiroUser) {
        List<ZTree> trees = new ArrayList<ZTree>();
        // shiro中缓存的用户角色
        Set<String> roles = shiroUser.getRoles();
        if (roles == null) {
            return trees;
        }
        // 如果有超级管理员权限
        if (roles.contains("admin")) {
            List<Resource> resourceList = this.selectByType(RESOURCE_MENU);
            if (resourceList == null) {
                return trees;
            }
            for (Resource resource : resourceList) {
    				ZTree tree = new ZTree();
                tree.setId(resource.getId());
                tree.setpId(resource.getPid());
                tree.setName(resource.getName());
                tree.setIconSkin(resource.getIcon());
                tree.setAttributes(resource.getUrl());
                Integer opened = resource.getOpened();
                tree.setOpen(null != opened && opened == 1);
                tree.setOpenMode(resource.getOpenMode());
                trees.add(tree);
            }
            return trees;
        }
        // 普通用户
        List<Long> roleIdList = userRoleMapper.selectRoleIdListByUserId(shiroUser.getId());
        if (roleIdList == null) {
            return trees;
        }
        List<Resource> resourceLists = roleMapper.selectResourceListByRoleIdList(roleIdList);
        if (resourceLists == null) {
            return trees;
        }
        for (Resource resource : resourceLists) {
			ZTree tree = new ZTree();
            tree.setId(resource.getId());
            tree.setpId(resource.getPid());
            tree.setName(resource.getName());
            tree.setIconSkin(resource.getIcon());
            tree.setAttributes(resource.getUrl());
            Integer opened = resource.getOpened();
            tree.setOpen(null != opened && opened == 1);
            tree.setOpenMode(resource.getOpenMode());
            trees.add(tree);
        }
        return trees;
    }

	@Override
	public boolean deleteById(Serializable resourceId) {
		roleResourceMapper.deleteByResourceId(resourceId);
		return super.deleteById(resourceId);
	}
}