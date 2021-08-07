<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="typeData" idColumn="type">
   <column name="type" type="String" xid="xid1"></column>
   <data xid="default7">[{&quot;type&quot;:&quot;收入&quot;},{&quot;type&quot;:&quot;支出&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="classData" idColumn="fID" queryAction="queryAccount_class" saveAction="saveAccount_class" url="/justep/account" tableName="account_class" limit="-1">
   <column label="fID" name="fID" type="String" xid="default4"></column>
   <column label="fType" name="fType" type="String" xid="default5"></column>
   <column label="fClass" name="fClass" type="String" xid="default6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="设置分类"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">设置分类</div>  
          <div class="x-titlebar-right reverse"> 
          
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="saveBtn" icon="icon-android-checkmark" onClick='{"operation":"classData.save"}'>
   <i xid="i2" class="icon-android-checkmark"></i>
   <span xid="span2"></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="newBtn" icon="icon-android-add" onClick="newBtnClick">
   <i xid="i1" class="icon-android-add"></i>
   <span xid="span1"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="classData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select1" bind-ref='ref("fType")' bind-options="$model.typeData" bind-optionsValue="type"></select></div>
   <div class="x-col" xid="col2"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" bind-ref='ref("fClass")'></input></div>
   <div class="x-col x-col-center" xid="col3"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="deleteBtn" icon="icon-android-close" onClick="deleteBtnClick">
   <i xid="i3" class="icon-android-close"></i>
   <span xid="span3"></span></a></div></div></li></ul> </div></div>
  </div> 
</div>