define([
	'underscore',
	'backbone',
	'models/stock'
	], function(_, Backbone, Stock) {

		var StockCollection = Backbone.Collection.extend({

			model: Stock,
			url: './server/list.php',

		});

		return new StockCollection;

	});