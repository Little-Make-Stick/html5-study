<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="locationData" idColumn="id" onCustomRefresh="locationDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid4"></column>
  <column label="商店ID" name="fShopID" type="String" xid="xid5"></column>
  <column label="正文" name="fContext" type="String" xid="xid6"></column>
  <column label="图片1" name="fImg1" type="String" xid="xid7"></column>
  <column label="图片2" name="fImg2" type="String" xid="xid8"></column>
  <column label="图片3" name="fImg3" type="String" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="shopData" idColumn="id" onCustomRefresh="shopDataCustomRefresh"><column label="商店ID" name="id" type="String" xid="xid1"></column>
  <column label="商店名称" name="fShopName" type="String" xid="xid2"></column>
  <column label="商店图片" name="fImg" type="String" xid="xid3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-card x-full" xid="panel1" style="padding:0px 0px 0px 0px;"> 
      <div class="x-panel-top" xid="top1" style="padding:0px 0px 0px 0px;">
  <div xid="topdiv" style="color:#FFFFFF;background-color:#FF0000;font-size:large;text-align:center;padding:10px 10px 10px 10px;font-weight:bold;">
  <span xid="span3"><![CDATA[同城]]></span>
  </div>
  </div>
  <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C8704347CAA000017EE7CB10137ED5E0" style="margin-left:0px;margin-right:0px;padding:0px 0px 0px 0px;">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" style="padding:0px 0px 0px 0px;">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2" style="padding:0px 0px 0px 0px;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="shopData" dataItemAlias="shopDataRow" style="padding:0px 0px 0px 0px;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-12" style="margin-left:0px;padding:0px 0px 0px 0px;">
  <div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object;img-thumbnail;img-responsive" src="" alt="" xid="image5" bind-attr-src=' val("fImg")' style="width:100px;"></img></a> </div> 
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41" bind-text=' val("fShopName")'>Media heading</h4></div> </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="$model.locationData" filter='$row.val("fShopID") ==  shopDataRow.val("id")'>
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" class="col-xs-12"><div xid="div4" class="col-xs-12"><span xid="span4" bind-text='val("fContext")' style="font-size:medium;"></span></div>
  <div component="$UI/system/components/justep/row/row" class="x-row col-xs-12" xid="row2">
   <div class="x-col col-xs-4" xid="col4"><img src=" " alt="" xid="image2" bind-attr-src=' val("fImg1")' class="col-xs-12"></img></div>
   <div class="x-col col-xs-4" xid="col5"><img src=" " alt="" xid="image3" bind-attr-src=' val("fImg2")' class="col-xs-12"></img></div>
   <div class="x-col col-xs-4" xid="col6"><img src=" " alt="" xid="image4" bind-attr-src=' val("fImg3")' class="col-xs-12"></img></div></div></li></ul> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row col-xs-12" xid="row3" style="background-color:#FF0000;color:#FFFFFF;left:0px;margin-bottom:20px;margin-left:0px;">
   <div class="x-col col-xs-4" xid="col7" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="转发" xid="button1" icon="e-commerce e-commerce-fenxiang" style="background-color:#FF0000;color:#FFFFFF;font-size:large;">
   <i xid="i2" class="e-commerce e-commerce-fenxiang"></i>
   <span xid="span5">转发</span></a></div>
   <div class="x-col col-xs-4" xid="col8" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="评论" xid="button2" style="background-color:#FF0000;color:#FFFFFF;font-size:large;" icon="e-commerce e-commerce-xiaoxi">
   <i xid="i3" class="e-commerce e-commerce-xiaoxi"></i>
   <span xid="span6">评论</span></a></div>
   <div class="x-col col-xs-4" xid="col9" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="点赞" xid="button3" style="color:#FFFFFF;background-color:#FF0000;font-size:large;" icon="e-commerce e-commerce-zan">
   <i xid="i4" class="e-commerce e-commerce-zan"></i>
   <span xid="span7">点赞</span></a></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div>
  </div></div> 
</div>