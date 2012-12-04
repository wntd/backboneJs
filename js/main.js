require.config({
	paths: {
		jquery: 'libs/jquery-1.8.3.min',
		underscore: 'libs/underscore-min',
		backbone: 'libs/backbone-optamd3-min',
		bootstrap: 'libs/bootstrap.min',
		text: 'libs/text'
	}
});

require(['app'], function(App) {

	App.initialize();

});