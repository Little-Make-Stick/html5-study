define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');

	var Model = function() {
		this.callParent();

		this.shellImpl = new ShellImpl(this, {
			contentsXid : "pages",
			wingXid : "wing",
			pageMappings : {
				"main" : {
					url : require.toUrl('./main.w')
				},
				"class" : {
				    url : require.toUrl('./class.w')
				}
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		justep.Shell.showPage("main");
	};


	return Model;
});