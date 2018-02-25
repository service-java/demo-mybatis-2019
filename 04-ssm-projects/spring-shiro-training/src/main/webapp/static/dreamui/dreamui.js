(function ($) {
	$.fn.comboZTree = function(options) {
		var target = this;
		var _options = parseOptions(target);
		var $options = $.extend($.fn.comboZTree.defaults, _options, options);
		$(target).data('ztree', {
			"options": $options
		});
		$(target).addClass("combotree-f");
		$(target).combo({
            required:true,
            editable:false
        });
		var $combo = $(target).combo("panel");
		var targetId = $(target).attr("id");
		var $tree = $("<ul class=\"ztree\"></ul>").attr("id", targetId + "_ul").appendTo($combo);
		$tree.data("value", $options.value);
		$.fn.zTree.init($tree, {
			check: $options.check,
			view: {
				dblClickExpand: false
			},
            data: {
                simpleData: {
                    enable: true,
                    rootPId: 1
                }
            },
            async: {
                enable: true,
                url: $options.url,
                dataFilter: function(treeId, parentNode, responseData) {
                		if (responseData) {
                			var optValue = $("#" + treeId).data("value");
	                    for( var i =0; i < responseData.length; i++ ) {
	                    		responseData[i].open = true;
	                    		var id = responseData[i].id;
	                    	    if (id == optValue || jQuery.inArray( id, optValue ) != -1) {
                    				responseData[i].checked = true;
                    			}
	                    	    
	                    }
                  	}
                  	return responseData;
                }
            },
            callback: {
            		onAsyncSuccess: function(event, treeId, treeNode, msg) {
            			var optValue = $("#" + treeId).data("value");
            			if (optValue) {
            				var nodes = $.parseJSON(msg);
            				var s = "";
	    	        			for (var i=0, l=nodes.length; i<l; i++) {
	    	        				var id = nodes[i].id;
	    	        				if (id == optValue || jQuery.inArray( id, optValue ) != -1) {
	    	        					s += nodes[i].name;
	    	        				} 
	    	        			}
            				$(target).combo("setValues", optValue).combo('setText', s);
            			}
            		},
                onClick: function(event, treeId, treeNode) {
                		var $$tree = $.fn.zTree.getZTreeObj(treeId);
                		$$tree.checkNode(treeNode, !treeNode.checked, null, true);
        				return false;
                },
                onCheck: function(event, treeId, treeNode) {
                		var $$tree = $.fn.zTree.getZTreeObj(treeId);
	        			var nodes = $$tree.getCheckedNodes(true);
	        			var v = "", s = "";
	        			for (var i=0, l=nodes.length; i<l; i++) {
	        				v += nodes[i].id + ",";
	        				s += nodes[i].name + ",";
	        			}
	        			if (v.length > 0 ) {
	        				v = v.substring(0, v.length-1);
	        				s = s.substring(0, s.length-1);
	        			}
	        			$(target).combo('setValue', v).combo('setText', s);
        			}
            }
        });
	};
	
	/**
	 * parse options, including standard 'data-options' attribute.
	 * calling examples:
	 * parseOptions(target);
	 */
	function parseOptions(target){
		var options = {};
		var $options = $.trim($(target).data('options'));
		if ($options){
			if ($options.substring(0, 1) != '{'){
				$options = '{' + $options + '}';
			}
			options = (new Function('return ' + $options))();
		}
		return options;
	}
	/**
	 * 默认参数
	 */
	$.fn.comboZTree.defaults = {
		url: null
	};
})(jQuery);