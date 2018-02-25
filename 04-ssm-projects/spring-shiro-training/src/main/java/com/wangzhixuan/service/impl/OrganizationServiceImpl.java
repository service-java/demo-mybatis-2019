package com.wangzhixuan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.commons.result.ZTree;
import com.wangzhixuan.mapper.OrganizationMapper;
import com.wangzhixuan.model.Organization;
import com.wangzhixuan.service.IOrganizationService;

/**
 *
 * Organization 表数据服务层接口实现类
 *
 */
@Service
public class OrganizationServiceImpl extends ServiceImpl<OrganizationMapper, Organization> implements IOrganizationService {

    @Autowired
    private OrganizationMapper organizationMapper;
    
    @Override
    public List<ZTree> selectTree() {
        List<Organization> organizationList = selectTreeGrid();

        List<ZTree> trees = new ArrayList<ZTree>();
        if (organizationList != null) {
            for (Organization organization : organizationList) {
            		ZTree tree = new ZTree();
                tree.setId(organization.getId());
                tree.setName(organization.getName());
                tree.setIconSkin(organization.getIcon());
                tree.setpId(organization.getPid());
                trees.add(tree);
            }
        }
        return trees;
    }

    @Override
    public List<Organization> selectTreeGrid() {
        EntityWrapper<Organization> wrapper = new EntityWrapper<Organization>();
        wrapper.orderBy("seq");
        return organizationMapper.selectList(wrapper);
    }


}