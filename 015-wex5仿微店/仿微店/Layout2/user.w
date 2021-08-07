<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartGoodsData" idColumn="id" onCustomRefresh="cartGoodsDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="图片" name="fImg" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-card x-full" xid="panel1" style="left:0px;"> 
        
    
  <div class="x-panel-content" xid="content1" style="left:0px;">
  
  
  
  <div xid="topdiv" style="background-color:#D93606;padding:10px 10px 10px 10px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" style="text-align:left;"><a component="$UI/system/components/justep/button/button" class="btn x-red btn-lg btn-only-icon" label="button" xid="button5" icon="linear linear-cog">
   <i xid="i5" class="linear linear-cog"></i>
   <span xid="span6"></span></a></div>
   <div class="x-col" xid="col2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6" style="text-align:center;"><img src="$UI/test/Layout2/img/user-unlogin.png" alt="" xid="image3" align="middle"></img></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7" style="text-align:center;"><span xid="span11" style="font-size:medium;font-weight:bold;color:#FFFFFF;text-align:center;"><![CDATA[未登录]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col10" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="登录" xid="button9" style="padding:10px 10px 10px 10px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;color:#FFFFFF;font-size:larger;">
   <i xid="i9"></i>
   <span xid="span12">登录</span></a></div>
   <div class="x-col" xid="col11" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="注册" xid="button10" style="color:#FFFFFF;padding:10px 10px 10px 10px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;font-size:large;">
   <i xid="i10"></i>
   <span xid="span13">注册</span></a></div>
   </div></div>
   <div class="x-col" xid="col3" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn x-red btn-lg btn-only-icon" label="button" xid="button6" icon="linear linear-bubble">
   <i xid="i6" class="linear linear-bubble"></i>
   <span xid="span7"></span></a></div></div></div><div xid="collectGoods"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col x-col-fixed" xid="col9" style="text-align:left;"><h3 xid="h32" style="color:#000000;text-align:left;"><![CDATA[收藏的商品]]></h3></div>
   <div class="x-col x-col-fixed" xid="col12" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button2" icon="linear linear-chevronright">
   <i xid="i3" class="linear linear-chevronright"></i>
   <span xid="span4"></span></a></div>
   </div>
  <div xid="div7" style="text-align:center;font-size:x-large;padding:10px 10px 10px 10px;"><span xid="span8" style="color:#C0C0C0;text-align:center;"><![CDATA[您还没有收藏过商品]]></span></div></div><div xid="collectShops"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col x-col-fixed" xid="col14" style="text-align:left;"><h3 xid="h33" style="color:#000000;text-align:left;"><![CDATA[收藏的店铺]]></h3></div>
   <div class="x-col x-col-fixed" xid="col15" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="button3" icon="linear linear-chevronright">
   <i xid="i4" class="linear linear-chevronright"></i>
   <span xid="span5"></span></a></div>
   </div>
  <div xid="div8" style="font-size:x-large;text-align:center;padding:10px 10px 10px 10px;color:#C0C0C0;"><span xid="span9" style="text-align:center;"><![CDATA[您还没有收藏过商店]]></span></div></div><div xid="cart"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="color:#000000;">
   <div class="x-col x-col-fixed" xid="col4" style="text-align:left;color:#000000;"><h3 xid="h31" style="color:#000000;"><![CDATA[购物车]]></h3></div>
   <div class="x-col x-col-fixed" xid="col5" style="text-align:right;">
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="cartBtn" icon="linear linear-chevronright" onClick="cartBtnClick">
   <i xid="i2" class="linear linear-chevronright"></i>
   <span xid="span3"></span></a></div>
   </div>
  
  </div></div></div> 
</div>