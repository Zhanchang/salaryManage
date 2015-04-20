<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Basic Layout - jQuery EasyUI Demo</title>

<script type="text/javascript" src="jquery-easyui-1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.4.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.4.2/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" href="jquery-easyui-1.4.2/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="jquery-easyui-1.4.2/themes/icon.css" type="text/css"></link>
<script type="text/javascript">
	$(function(){
		// 数据
		var treeData=[{
			text:"薪资管理",
			children:[{
				text:"帐套管理",
				attributes:{
					url:"gradeInfoManage.jsp"
				}
			},{
				text:"工资表管理",
				attributes:{
					url:"studentInfoManage.jsp"
				}
			},{
				text:"指标设置",
				attributes:{
					url:"gradeInfoManage.jsp"
				}
			},{
				text:"提醒",
				attributes:{
					url:"studentInfoManage.jsp"
				}
			},{
				text:"固定报盘",
				attributes:{
					url:"gradeInfoManage.jsp"
				}
			},{
				text:"浮动报盘",
				attributes:{
					url:"gradeInfoManage.jsp"
				}
			},{
				text:"现金管理",
				attributes:{
					url:"studentInfoManage.jsp"
				}
			}]
		}];
		
		// 实例化树菜单
		$("#tree").tree({
			data:treeData,
			lines:true,
			onClick:function(node){
				if(node.attributes){
					openTab(node.text,node.attributes.url);
				}
			}
		});
		
		// 新增Tab
		function openTab(text,url){
			if($("#tabs").tabs('exists',text)){
				$("#tabs").tabs('select',text);
			}else{
				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
				$("#tabs").tabs('add',{
					title:text,
					closable:true,
					content:content
				});
			}
		}
	});
</script>
</head>

<body class="easyui-layout" data-options="fit:true">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
	<div align="center" ><font size="7">薪资管理系统</font></div>
	</div>
		<div align="left" style="width: 80%;float: left"><img src="images/main.jpg"></div>
		<div style="padding-top: 50px;padding-right: 20px;">当前用户：&nbsp;<font color="red" >${currentUser.userName }</font></div>
	
	<div data-options="region:'west',split:true," style="width:150px;padding:10px;">
		
			<ul id="tree"></ul>
</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<ul id="tree"></ul>

	<div data-options="region:'center',title:'Center'">
				<div class="easyui-tabs" data-options="fit:true" data-optons="order:false" id="tabs">
			<div title="首页" >
				<div align="center" style="padding-top: 100px;"><font color="red" size="10">欢迎使用</font></div>
			</div>
		</div></div>
   <div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	
</body> 


</html>