<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classData" limit="20" idColumn="id" onCustomRefresh="classDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="名称" name="fClassName" type="String" xid="xid2"></column>
  <column label="图片" name="fImg" type="String" xid="xid3"></column>
  <column label="描述" name="fDescription" type="String" xid="xid4"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-card x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div xid="topdiv" style="background-color:#FF0000;color:#FFFFFF;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed" xid="col1"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1"></input></div>
   <div class="x-col" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn x-red btn-only-label" label="搜索" xid="button1">
   <i xid="i2"></i>
   <span xid="span4">搜索</span></a></div>
   </div></div></div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C86F5ACEC2C0000189231DA988A83090"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list x-cards clearfix" xid="list1" data="classData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="clearfix col-xs-6" bind-click="listClick">
  <div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object" src="" alt="" xid="image1" bind-attr-src=' val("fImg")'></img></a> </div> 
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41" bind-text=' val("fClassName")'>Media heading</h4>
  <span xid="span3" bind-text='val("fDescription")'></span></div> </div>
  </li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div>
  </div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/test/Layout2/class.w"></span></div>