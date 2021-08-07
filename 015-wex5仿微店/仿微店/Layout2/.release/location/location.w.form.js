define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/test/Layout2/location'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c7byYji';
	this._flag_='4e295e8ec6c35b95fdee63df637b3758';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fContext":{"define":"fContext","label":"正文","name":"fContext","relation":"fContext","type":"String"},"fImg1":{"define":"fImg1","label":"图片1","name":"fImg1","relation":"fImg1","type":"String"},"fImg2":{"define":"fImg2","label":"图片2","name":"fImg2","relation":"fImg2","type":"String"},"fImg3":{"define":"fImg3","label":"图片3","name":"fImg3","relation":"fImg3","type":"String"},"fShopID":{"define":"fShopID","label":"商店ID","name":"fShopID","relation":"fShopID","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"locationDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"locationData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fImg":{"define":"fImg","label":"商店图片","name":"fImg","relation":"fImg","type":"String"},"fShopName":{"define":"fShopName","label":"商店名称","name":"fShopName","relation":"fShopName","type":"String"},"id":{"define":"id","label":"商店ID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"shopDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"shopData"});
}}); 
return __result;});