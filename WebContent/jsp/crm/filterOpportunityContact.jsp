<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<link rel="stylesheet" type="text/css"
	href="../../themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../../themes/icon.css" />
<link rel="stylesheet" type="text/css" href="../../css/global.css" />

<script type="text/javascript" src="../../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../js/datagrid.js"></script>
<script type="text/javascript" src="../../js/global.js"></script>

<script type="text/javascript">	  
    $(document).ready(function(){
  	  $("#remove").click(function() {
   		  many_removerow('unselectContact.action?relationKey=Opportunity&relationValue=<s:property value="id" />&seleteIDs=');
   	  });

     $('#tt').datagrid({
		title:"<s:text name='title.grid.contacts'/>",
		iconCls:'icon-save',
		width:700,
		height:350,
		idField:'id', 
		url:'filterOpportunityContact.action?id=<s:property value="id" />',
		columns:[[
					{field:'ck',checkbox:true},
					{field:'id',title:'<s:text name="entity.id.label" />',width:80,align:'center',sortable:'true'},
					{field:'name',title:'<s:text name="entity.name.label" />',width:80,align:'center',sortable:'true',formatter:function(value,row,index){  
						   new_format_value = "<a href='editContact.action?id=" + row.id + "' target='_blank'>" + value + "</a>";
						   return new_format_value 
		             }  
		            },
					{field:'title',title:'<s:text name="contact.title.label" />',width:80,align:'center',sortable:'true'},
					{field:'accountName',title:'<s:text name="entity.account.label" />',width:80,align:'right',sortable:'true'},
					{field:'email',title:'<s:text name="contact.email.label" />',width:80,align:'center',sortable:'true'},
					{field:'officePhone',title:'<s:text name="contact.office_phone.label" />',width:80,align:'center',sortable:'true'},
					{field:'user_name',title:'<s:text name="entity.assigned_to.label" />',width:80,align:'center',sortable:'true'}
				]],
	  });
		
    }); 
  </script>
</head>
<body>
  <div id="feature">
    <div id="shortcuts" class="headerList">
      <span style="white-space:nowrap;">
        <a href="editContact.action?relationKey=Opportunity&relationValue=<s:property value="id" />" class="easyui-linkbutton" iconCls="icon-add" plain="true" target='_blank'><s:text name="action.createContact" /></a>  
      </span>
      <span style="white-space:nowrap;">
        <a id="remove" href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"><s:text name="action.removeRelation" /></a>  
      </span>
      <span style="white-space:nowrap;">
        <a id="select" href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true" onClick="openwindow('/crm/selectContactPage.action?relationKey=Opportunity&relationValue=<s:property value="id" />','Select Contact',750,500)"><s:text name="action.select" /></a>  
      </span>	      		     		     
    </div> 		 
	<s:form id="addObjectForm" namespace="/jsp/crm"
		method="post">
	  <s:hidden name="id" id="id" value="%{id}" />	
	  <table id="tt"></table>	        
	</s:form>	
  </div>	  
</body>
</html>



