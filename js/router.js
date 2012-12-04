define([
	'jquery',
	'underscore',
	'backbone',
	'views/stockList'
	], function($, _, Backbone, StockList) {

		var AppRouter = Backbone.Router.extend({

			routes: {
				'': 'renderStock',
			},

			renderStock: function() {
				var stockListView = new StockList();
				stockListView.stockList();
			}

		});

		var initialize = function() {

			var app_router = new AppRouter();

			Backbone.history.start();
		};

		return {
			initialize : initialize
		};
		
	});