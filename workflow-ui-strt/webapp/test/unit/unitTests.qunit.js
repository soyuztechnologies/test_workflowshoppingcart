/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"comey/workflow-ui-strt/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
