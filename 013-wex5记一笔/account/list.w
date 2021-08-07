<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="accountData" idColumn="fID" queryAction="queryAccount" saveAction="saveAccount" url="/justep/account" tableName="account" directDelete="true"><column label="ID" name="fID" type="String" xid="default8"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default9"></column>
  <column label="日期" name="fDate" type="Date" xid="default10"></column>
  <column label="金额" name="fMoney" type="Decimal" xid="default11"></column>
  <column label="备注" name="fDescription" type="String" xid="default12"></column>
  <column label="类型" name="fType" type="String" xid="default13"></column>
  <column label="分类" name="fClass" type="String" xid="default14"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="记账本"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">记账本</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="newBtn" icon="icon-android-add" onClick="newBtnClick">
   <i xid="i1" class="icon-android-add"></i>
   <span xid="span1"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C86A1C887F10000113CB150015101DCB"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span2">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="accountData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2" bind-click="listLinkClick"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col5"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("fClass")' style="font-size:x-large;" bind-style="{'color': val(&quot;fType&quot;) == '收入'?'green':'brown'}"></div></div>
   <div class="x-col" xid="col6"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("fMoney")' style="font-size:x-large;" bind-style="{'color': val(&quot;fType&quot;) == '收入'?'green':'brown'}"></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col8"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("fDescription")'></div></div>
   <div class="x-col" xid="col9"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='ref("fDate")'></div></div></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm btn-only-icon" label="button" xid="deleteBtn" icon="icon-android-close" onClick="deleteBtnClick">
   <i xid="i3" class="icon-android-close"></i>
   <span xid="span4"></span></a></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/test/account/detail.w" onReceive="windowDialog1Receive"><result concept="accountData" operation="edit" origin="accountData" xid="default23">
   <mapping from="fID" to="fID" locator="true" xid="default24"></mapping>
   <mapping from="fCreateTime" to="fCreateTime" xid="default25"></mapping>
   <mapping from="fDate" to="fDate" xid="default26"></mapping>
   <mapping from="fMoney" to="fMoney" xid="default27"></mapping>
   <mapping from="fDescription" to="fDescription" xid="default28"></mapping>
   <mapping from="fType" to="fType" xid="default29"></mapping>
   <mapping from="fClass" to="fClass" xid="default30"></mapping></result></span></div>