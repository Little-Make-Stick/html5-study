define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.newBtnClick = function(event){
	    this.comp("windowDialog1").open({
	        "params" : {
	            "operator" : "new"
	        }
	    });
	};

	Model.prototype.windowDialog1Receive = function(event){
	    this.comp("accountData").saveData();    //从记一笔返回后保存数据
	};

	Model.prototype.listLinkClick = function(event){  //打开记一笔编辑，传入data当前行数据
	    var row = event.bindingContext.$object;
	    this.comp("windowDialog1").open({
	        "params" : {
	            "operator" : "edit",
	            "rowData" : row.toJson()
	        }
	    });
	};

	Model.prototype.deleteBtnClick = function(event){
	    var data = this.comp("accountData");
	    var row = event.bindingContext.$object;
	    data.deleteData([ row ], {
			"async" : true,
			"onSuccess" : function() {
				data.saveData();
			}
		});  
	};

	Model.prototype.menuBtnClick = function(event){
	    justep.Shell.showLeft();
	};

	return Model;
});