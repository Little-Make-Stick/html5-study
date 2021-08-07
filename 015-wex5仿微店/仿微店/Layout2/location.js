define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.locationDataCustomRefresh = function(event){
	    var url = require.toUrl("./json/locationData.json");
	    $.ajaxSettings.async = false;
	    $.getJSON( url , function(data){
	        event.source.loadData(data);
	    });
	};

	Model.prototype.shopDataCustomRefresh = function(event){
	    var url = require.toUrl("./json/shopData.json");
	    $.ajaxSettings.async = false;
	    $.getJSON( url , function(data){
	        event.source.loadData(data);
	    });
	};

	return Model;
});