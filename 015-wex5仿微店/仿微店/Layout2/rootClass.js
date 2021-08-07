define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.classDataCustomRefresh = function(event){
	    var url = require.toUrl("./json/rootClassData.json");
	    $.ajaxSettings.async = false;
	    $.getJSON( url , function(data){
	        event.source.loadData(data);
	    });
	};

	Model.prototype.listClick = function(event){
	    var rootID = event.bindingContext.$object.val('id');
	    var className = event.bindingContext.$object.val('fClassName');
//	    justep.Shell.showPage("./class.w",{
//	            "rootID": rootID,
//	            "className":className
//	        });
//	    justep.Shell.showPage("class",{
//	            "rootID": rootID,
//	            "className":className
//	        });
	    this.comp("windowDialog1").open({
	        "params" : {
	            "rootID": rootID,
	            "className":className
	        }
	    });
	};

	return Model;
});