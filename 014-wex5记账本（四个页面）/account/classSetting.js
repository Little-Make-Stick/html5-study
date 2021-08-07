define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.newBtnClick = function(event){
	    this.comp("classData").newData({
	        "defaultValues" : [{
	            "fID" : justep.UUID.createUUID()
	        }]
	    });
	};

	Model.prototype.deleteBtnClick = function(event){
	    var row = event.bindingContext.$object;
	    this.comp("classData").deleteData([ row ], {
			"async" : true,
			"onSuccess" : function() {
				data.saveData();
			}
		});
	};

	return Model;
});