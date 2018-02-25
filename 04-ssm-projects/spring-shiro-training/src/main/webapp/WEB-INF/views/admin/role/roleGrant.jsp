<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
    		$.fn.zTree.init($("#resourceTree"), {
    			check: {
    				enable: true,
    				nocheckInherit: true,
    				chkboxType: { "Y" : "", "N" : "" }
    			},
            data: {
                simpleData: {
                    enable: true,
                    rootPId: 1
                }
            },
            view: {
        			txtSelectedEnable: true
       	 	},
            async: {
                enable: true,
                url: '${path }/resource/allTrees'
            },
            callback: {
            		onAsyncSuccess: function(event, treeId, treeNode, msg) {
            			progressLoad();
            			var $$tree = $.fn.zTree.getZTreeObj(treeId);
            			$$tree.expandAll(true);
                     $.post( '${path }/role/findResourceIdListByRoleId', {
                         id : '${id}'
                     }, function(result) {
                         var ids;
                         if (result.success == true && result.obj != undefined) {
                             ids = $.stringToList(result.obj + '');
                         }
                         if (ids.length > 0) {
                             for ( var i = 0; i < ids.length; i++) {
                            	     var nodes = $$tree.transformToArray($$tree.getNodes());
                            	     for( var j =0; j < nodes.length; j++ ) {
                            	    	 	var node = nodes[j];
                            	    	 	if (node.id == ids[i]) {
                            	    	 		$$tree.checkNode(node, true, false);
                            	    	 	}
                            	     }
                             }
                         }
                     }, 'json');
                    progressClose();
	        		}
            }
        });

        $('#roleGrantForm').form({
            url : '${path }/role/grant',
            onSubmit : function() {
                progressLoad();
                var isValid = $(this).form('validate');
                if (!isValid) {
                    progressClose();
                }
                var $$tree = $.fn.zTree.getZTreeObj("resourceTree");
                var checknodes = $$tree.getCheckedNodes(true);
                var ids = [];
                if (checknodes && checknodes.length > 0) {
                    for ( var i = 0; i < checknodes.length; i++) {
                        ids.push(checknodes[i].id);
                    }
                }
                $('#resourceIds').val(ids);
                return isValid;
            },
            success : function(result) {
                progressClose();
                result = $.parseJSON(result);
                if (result.success) {
                    parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    parent.$.messager.alert('错误', result.msg, 'error');
                }
            }
        });
    });

    function checkAll() {
    		var $$tree = $.fn.zTree.getZTreeObj("resourceTree");
    		$$tree.checkAllNodes(true);
    }
    function uncheckAll() {
    		var $$tree = $.fn.zTree.getZTreeObj("resourceTree");
    		$$tree.checkAllNodes(false);
    }
    function checkInverse() {
    		var $$tree = $.fn.zTree.getZTreeObj("resourceTree");
    		var nodes = $$tree.transformToArray($$tree.getNodes());
        for ( var i = 0; i < nodes.length; i++) {
        		$$tree.checkNode(nodes[i], !nodes[i].checked, true);
        }
    }
</script>
<div id="roleGrantLayout" class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'west'" title="系统资源" style="width: 300px; padding: 1px;">
        <div class="well well-small">
            <form id="roleGrantForm" method="post">
                <input name="id" type="hidden"  value="${id}" readonly="readonly">
                <ul id="resourceTree" class="ztree"></ul>
                <input id="resourceIds" name="resourceIds" type="hidden" />
            </form>
        </div>
    </div>
    <div data-options="region:'center'" title="" style="overflow: hidden; padding: 10px;">
        <div>
            <button class="btn btn-success" onclick="checkAll();">全选</button>
            <br /> <br />
            <button class="btn btn-warning" onclick="checkInverse();">反选</button>
            <br /> <br />
            <button class="btn btn-inverse" onclick="uncheckAll();">取消</button>
        </div>
    </div>
</div>