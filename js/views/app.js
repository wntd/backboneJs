define([
	'jquery',
	'underscore',
	'backbone',
	'collections/items',
	'text!templates/stocklist.html',
	'router/router'
	], function($, _, Backbone, Items, stockTemplate, Router) {

		var AppView = Backbone.View.extend({

			el: 'div.stocklist',

			template: _.template(stockTemplate),

			initialize: function() {
				_.bindAll(this, 'stockList', 'render');
				this.stockList();
				this.render();
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

		return AppView;

	});