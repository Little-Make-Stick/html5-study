define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
	    var accountData = this.comp("accountData");
	    accountData.clear();
	    if(this.params.operator == "new"){        //新增账目数据
	        accountData.newData({
	            "defaultValues" : [{
	                "fID" : justep.UUID.createUUID(),
	                "fCreateTime" : new Date()
	            }]
	        });
	    }else if(this.params.operator == "edit"){     //修改账目数据
	        accountData.loadData([this.params.rowData]);
	        accountData.first();
	    }
	};

	Model.prototype.okBtnClick = function(event){
	//确定后返回当前行，用于windowDialog的mapping映射
	    var accountData = this.comp("accountData");
	    this.owner.send(accountData.getCurrentRow());
	    this.close();
	};

	return Model;
});