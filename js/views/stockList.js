define([
	'jquery',
	'underscore',
	'backbone',
	'collections/items',
	'text!templates/stocklist.html'
	], function($, _, Backbone, Items, stockTemplate) {

		var StockList = Backbone.View.extend({

			el: 'div.stocklist',

			template: _.template(stockTemplate),

			initialize: function() {
				_.bindAll(this, 'stockList', 'render');
			},

			render: function(response){ 

			$('div.stocklist').html(this.template({ items: response }));

			$('#stockTable tr[data-id]').each(function(){
			var id = $(this).attr('data-id');
			});

			},

			stockList: function(querystring){ 
			var self = this;

			Items.fetch({
				data: querystring, 
				success: function(collection, response){ 
					self.render(response);
				}
			});
			},

		});

		return StockList;

	});