<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="SecondClassData" idColumn="fID" onCustomRefresh="SecondClassDataCustomRefresh"><column label="ID" name="fID" type="String" xid="xid1"></column>
  <column label="一级ID" name="fRootID" type="String" xid="xid2"></column>
  <column label="类别名称" name="fClassName" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ThreeClassData" idColumn="fID" onCustomRefresh="ThreeClassDataCustomRefresh"><column label="ID" name="fID" type="String" xid="xid4"></column>
  <column label="二级ID" name="fSecondID" type="String" xid="xid5"></column>
  <column label="类别名称" name="fClassName" type="String" xid="xid6"></column>
  <column label="图片" name="fImg" type="String" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="标题"
          class="x-titlebar" style="background-color:#FFFFFF;font-size:larger;font-weight:bolder;color:#000000;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" bind-text="$model.params.className">标题</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C86F9E122D100001B6A8D8207D5352D0">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" style="clip:rect(0px auto auto 0px);">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="classList" data="SecondClassData" filter='$row.val("fRootID") == $model.params.rootID' dataItemAlias="secondClassRow">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-12"><div xid="div4" bind-text=' val("fClassName")' style="font-size:larger;font-weight:bold;background-color:#E3E3E3;top:auto;left:auto;clip:rect(auto auto auto 0px);"></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="goodsList" data="$model.ThreeClassData" dataItemAlias="threeClassRow" filter='$row.val("fSecondID") == secondClassRow.val("fID")'>
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" class="col-xs-2"><img src=" " alt="" xid="image1" bind-attr-src=' val("fImg")'></img>
  <span xid="span3" bind-text='val("fClassName")'></span></li></ul> </div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>