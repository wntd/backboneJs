require.config({
	paths: {
		jquery: 'libs/jquery',
		underscore: 'libs/underscore-min',
		backbone: 'libs/backbone-optamd3-min',
		bootstrap: 'libs/bootstrap.min',
		text: 'libs/text'
	}
});

require(['views/app'], function(AppView) {

	var app_view = new AppView;

});