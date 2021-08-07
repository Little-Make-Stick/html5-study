define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.cartGoodsDataCustomRefresh = function(event){
	    var url = require.toUrl("./json/cartGoodsData.json");
	    $.ajaxSettings.async = false;
	    $.getJSON( url , function(data){
	        event.source.loadData(data);
	    });
	};

	Model.prototype.cartBtnClick = function(event){
	    justep.Shell.showPage(require.toUrl('./cart.w'));
	};

	return Model;
});  