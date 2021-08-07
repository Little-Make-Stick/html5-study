<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartShopData" idColumn="id" onCustomRefresh="cartShopDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="商铺名称" name="fShopName" type="String" xid="xid2"></column>
  <column isCalculate="false" label="合计金额" name="fSumMoney" type="Decimal" xid="xid3"></column>
  <column isCalculate="false" label="合计数量" name="fSumNumber" type="Integer" xid="xid4"></column>
  <column label="选中" name="fCheck" type="String" xid="xid5"></column>
  <rule xid="rule2">
   <col expr="$model.cartGoodsData.sum('fMoney',function(ev){return ev.row.val('fShopID')==$row.val('id');}).toFixed(2)" name="fSumMoney" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default2">$model.cartGoodsData.sum('fMoney',function(ev){return ev.row.val('fShopID') == $row.val('id');}).toFixed(2)</expr></calculate> </col> 
   <col name="fSumNumber" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default3">$model.cartGoodsData.sum('fCheck',function(ev){return ev.row.val('fShopID') == $row.val('id');})</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartGoodsData" idColumn="id" onCustomRefresh="cartGoodsDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid6"></column>
  <column label="商铺ID" name="fShopID" type="String" xid="xid7"></column>
  <column label="商品ID" name="fGoodsID" type="String" xid="xid8"></column>
  <column label="商品名称" name="fTitle" type="String" xid="xid9"></column>
  <column label="图片" name="fImg" type="String" xid="xid10"></column>
  <column label="型号" name="fSize" type="String" xid="xid11"></column>
  <column label="现价" name="fPrice" type="Decimal" xid="xid12"></column>
  <column label="原价" name="fOldPrice" type="Decimal" xid="xid13"></column>
  <column label="数量" name="fNumber" type="Integer" xid="xid14"></column>
  <column isCalculate="false" label="金额" name="fMoney" type="Decimal" xid="xid15"></column>
  <column label="选中" name="fCheck" type="String" xid="xid16"></column>
  <rule xid="rule1">
   <col name="fMoney" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">$row.val('fCheck')==1?$row.val('fPrice')*$row.val('fNumber'):'0'</expr></calculate> </col> </rule></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-card x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="购物车"
          class="x-titlebar" style="background-color:#FFFFFF;color:#000000;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">购物车</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C86F61DDBA200001C894CC304CE51550">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="spanscro1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="cartShopData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="x-min-height" style="border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#CCCCCC;margin-bottom:10px;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="background-color:#FD4609;">
   <div class="x-col x-col-10 x-col-center" xid="col1"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="shopCheckbox" checkedValue="1" bind-ref='ref("fCheck")' onChange="shopCheckboxChange"></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col2"><span xid="span1" bind-text='val("fShopName")' style="font-family:Century;font-size:large;font-weight:bold;"></span></div>
   </div>
  
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="$model.cartGoodsData" filter=' $row.val("fShopID") == val("id")'>
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-fixed" xid="col7" style="width:auto;"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="goodsCheckbox" checkedValue="1" bind-ref='ref("fCheck")' onChange="goodsCheckboxChange"></span></div>
   <div class="x-col x-col-20" xid="col8"><img src=" " alt="" xid="image1" bind-attr-src=' val("fImg")' align="middle" style="width:150px;"></img></div>
   <div class="x-col x-col-fixed" xid="col9"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-fixed" xid="col10"><span xid="span2" bind-text='val("fTitle")' style="font-family:Castellar;font-size:x-large;font-weight:bold;"></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col x-col-fixed" xid="col13"><span xid="span3"><![CDATA[型号：]]></span>
  <span xid="span4" bind-text='val("fSize")'></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col x-col-fixed" xid="col16"><span xid="span5"><![CDATA[￥]]></span>
  <span xid="span6" bind-text='val("fPrice")'></span></div>
   <div class="x-col x-col-fixed" xid="col17"><span xid="span7" style="text-decoration:line-through ;"><![CDATA[￥]]></span>
  <span xid="span8" bind-text='val("fOldPrice")' style="text-decoration:line-through ;"></span></div>
   <div class="x-col x-col-fixed" xid="col18"><a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="subBtn" icon="icon-android-remove" onClick="subBtnClick">
   <i xid="i1" class="icon-android-remove"></i>
   <span xid="spanb1"></span></a>
  
  <span xid="span9" bind-text='val("fNumber")' class="pull-left"></span><a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="addBtn" icon="icon-android-add" onClick="addBtnClick">
   <i xid="i2" class="icon-android-add"></i>
   <span xid="spanb2"></span></a></div></div></div></div></li></ul> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed" xid="col4"><span xid="span10"><![CDATA[总计（不含运费）]]></span></div>
   <div class="x-col x-col-fixed" xid="col5">
  <span xid="span11"><![CDATA[￥]]></span>
  <span xid="span12" bind-text='val("fSumMoney")'></span></div>
   <div class="x-col x-col-fixed" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn x-red" label="去结算" xid="button3">
   <i xid="i3"></i>
   <span xid="spanb3" bind-text="'去结算(' + val(&quot;fSumNumber&quot;) + ')'"><![CDATA[去结算]]></span></a></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="spanscro2">加载更多...</span></div> </div></div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="messageDialog"></span></div>