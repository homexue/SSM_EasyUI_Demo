<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="comm/tag.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>easy超级模板</title>
	
	<c:import url="comm/script.jsp"></c:import>
	
	<script>
		jQuery.ajaxSetup({cache:false});//ajax不缓存
		/*  $(function() {  
			$('#main_tab').tabs({  
		        width: $("#main_tab").parent().width(),  
		        height: $("#main_tab").parent().height() 
		    });   
	     });
	     $(window).resize(function () {  
	       
	         $('body').layout('panel','center').panel('refresh');
    	 }) ;
	      */
				
		function setmain(title,href){
		//	$(".combo-panel").parent(".panel").remove(); //清楚所有class为combo-panel的class为panel的父元素，解决combobox在页面缓存的问题
			var centerURL = href;
			var centerTitle = title;
			$('body').layout('panel','center').panel({
				title:"所在位置："+centerTitle,
				href:centerURL
			});
			$('body').layout('panel','center').panel('refresh');
			return false;		
		}
	
		
		//弹出窗口
		function showWindow(options){
			jQuery("#MyPopWindow").window(options);
		}
		//关闭弹出窗口
		function closeWindow(){
			$("#MyPopWindow").window('close');
		}
	</script>
		<script type="text/javascript">  
    
</script>  
	
  </head>
  <body >
  
  	<div class="easyui-layout"  data-options="fit:true">
    	<div region="north" style="height:20%" border="false"  split="true" href="${ctx }/toTop.do"  >
    	</div>
    	<div region="west" href="${ctx }/toLeft.do" id="leftMenu" split="true" class="menudiv" style="width:20%;height:100%" title="我是左边">
    	</div>
    	<div region="center"   data-options="fit:true"  style="border:none;" id="main_tab" split="true" cache="false" >
    		<div title="这是个牛B的东东" style="padding:10px;height:100%" href="${ctx }/toWelcome.do">
			</div>
    	</div>
    	<div region="south" href="${ctx }/toBottom.do" style="height:8%" split="true" >
    	</div>
    	<div id="MyPopWindow" modal="true" shadow="false" minimizable="false" cache="false" maximizable="false" collapsible="false" resizable="false" style="margin: 0px;padding: 0px;overflow: auto;"></div>
  	</div>
  </body>
</html>
