define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.button1Click = function(event){
	    this.comp('button1').set({icon:'icon-ios7-chatboxes'});	    
	};

	Model.prototype.button2Click = function(event){
        this.comp('button2').set({icon:'icon-ios7-location'});
	};

	Model.prototype.button3Click = function(event){
	    this.comp('button3').set({icon:'icon-search'});
	};

	Model.prototype.button4Click = function(event){
	    this.comp('button4').set({icon:'icon-ios7-contact'});
	};

	Model.prototype.goodsDataCustomRefresh = function(event){
	    var url = require.toUrl("./json/goodsData.json");
	    $.ajaxSettings.async = false;
	    $.getJSON( url , function(data){
	        event.source.loadData(data);
	    });
	};

	return Model;
});