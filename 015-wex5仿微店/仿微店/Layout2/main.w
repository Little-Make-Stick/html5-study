<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="图片" name="fImg" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   
   <div class="x-panel-content x-scroll-view" xid="content1" _xid="C87028FE479000011F1512C01F701B30">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#FF0000;">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1"><![CDATA[微店动态]]></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="goodsData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-12"><img src=" " alt="" xid="image1" bind-attr-src=' val("fImg")' class="col-xs-12"></img></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> </div></div>
   <div class="x-contents-content" xid="content3"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer3" src="$UI/test/Layout2/location.w"></div></div>
   <div class="x-contents-content" xid="content4"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="./rootClass.w"></div></div>
   <div class="x-contents-content" xid="content5"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" src="$UI/test/Layout2/user.w"></div></div>
   </div>
  </div><div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="button1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="动态" xid="button1" icon="icon-ios7-chatboxes-outline" target="content2" onClick="button1Click">
    <i xid="i1" class="icon-ios7-chatboxes-outline"></i>
    <span xid="span1">动态</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="同城" xid="button2" icon="icon-ios7-location-outline" target="content3" onClick="button2Click">
    <i xid="i2" class="icon-ios7-location-outline"></i>
    <span xid="span2">同城</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="搜索" xid="button3" icon="icon-ios7-search" target="content4" onClick="button3Click">
   <i xid="i3" class="icon-ios7-search"></i>
   <span xid="span3">搜索</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="我的" xid="button4" icon="icon-ios7-contact-outline" target="content5" onClick="button4Click">
   <i xid="i4" class="icon-ios7-contact-outline"></i>
   <span xid="span4">我的</span></a></div></div></div>
  </div>