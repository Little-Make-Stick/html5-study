define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
//cartShopData的fSumMoney计算规则
//$model.cartGoodsData.sum('fMoney',function(ev){return ev.row.val('fShopID') == $row.val('id');}).toFixed(2)
//cartShopData的fSumNumber计算规则
//$model.cartGoodsData.sum('fCheck',function(ev){return ev.row.val('fShopID') == $row.val('id');})
//cartGoodsData的fMoney计算规则
//$row.val('fCheck')==1?$row.val('fPrice')*$row.val('fNumber'):'0'

	Model.prototype.cartShopDataCustomRefresh = function(event){
	    var url = require.toUrl("./json/cartShopData.json");
	    $.ajaxSettings.async = false;
	    $.getJSON( url , function(data){
	        event.source.loadData(data);
	    });
	};

	Model.prototype.cartGoodsDataCustomRefresh = function(event){
	    var url = require.toUrl("./json/cartGoodsData.json");
	    $.ajaxSettings.async = false;
	    $.getJSON( url , function(data){
	        event.source.loadData(data);
	    });
	};

	Model.prototype.subBtnClick = function(event){
	    var row = event.bindingContext.$object;
	    if(row.val('fNumber') > 1)
	        row.val('fNumber' , row.val('fNumber')-1);
	};

	Model.prototype.addBtnClick = function(event){
	    var row = event.bindingContext.$object;
	    row.val('fNumber' , row.val('fNumber')+1);
	};

	Model.prototype.shopCheckboxChange = function(event){
	    var row = event.bindingContext.$object;
	    var shopID = row.val('id');
	    var rows = this.comp('cartGoodsData').find(['fShopID'],[shopID]);
	    for(var i = 0;i < rows.length;i++)
	        rows[i].val('fCheck',event.value);
	};

	Model.prototype.goodsCheckboxChange = function(event){
	    var row = event.bindingContext.$object;
	    var shopID = row.val('fShopID');
	    var rows = this.comp('cartGoodsData').find(['fShopID','fCheck'],[shopID,1]);
	    var rowsnum = rows.length;
	    if(event.checked)
	        rowsnum++;
	    else
	        rowsnum--;
	    if(rowsnum > 0)
	        this.comp('cartShopData').setValueByID('fCheck', 1, shopID);
	    else
	        this.comp('cartShopData').setValueByID('fCheck', "", shopID);
	};

	return Model;
});