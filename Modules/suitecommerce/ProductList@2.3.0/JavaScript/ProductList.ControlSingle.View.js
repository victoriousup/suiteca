/*
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
*/

// @module ProductList
define('ProductList.ControlSingle.View'
	,
		[
			'ProductList.Control.View'
		,	'ProductList.Item.Collection'
		,	'product_list_control_single.tpl'

		,	'underscore'
		,	'Backbone'
		,	'Backbone.View'
		,	'Backbone.View.render'
		]
	,	function(
			ControlView
		,	ProductListItemCollection
		,	product_list_control_single_tpl

		,	_
		,	Backbone
	)
{
	'use strict';

	// @class ProductList.ControlSingle.View @extends Backbone.View
	return Backbone.View.extend({

		template: product_list_control_single_tpl

	,	attributes: {'class': 'product-lists-single'}

	,	events: {
			'click [data-type="add-product-to-single-list"]': 'addItemToSingleList'
		}

	,	addItemToList: ControlView.prototype.addItemToList

	,	doAddItemToList: ControlView.prototype.doAddItemToList

	,	saveAndShowConfirmationMessage: ControlView.prototype.saveAndShowConfirmationMessage

	,	isReadyForList: ControlView.prototype.isReadyForList

	,	validateGiftCertificate: ControlView.prototype.validateGiftCertificate

	,	getItemOptions: ControlView.prototype.getItemOptions

	,	validateLogin: ControlView.prototype.validateLogin

	,	getProductId: ControlView.prototype.getProductId

	,	getNewItemData: ControlView.prototype.getNewItemData

	,	initialize: function (options)
		{
			this.product = options.product;
			this.collection = options.collection;
			this.application = options.application;

			// single list
			this.single_list = this.collection.at(0);
		}

	,	render: function ()
		{
			this._render();

			// for guest user we want to enable the button and send the user to the login page
			// for non guest users we want to disable the button if the product is not yet ready for list
			if (!this.isReadyForList())
			{
				this.$('[data-action="add-product-to-single-list"]').attr('disabled', 'true');
			}
		}

		// @method isProductAlreadyAdded Determines if the current product with the selected options is already in the product list
		// @return {Boolean} Indicate is the product is alreday added into the current single list
	,	isProductAlreadyAdded: function ()
		{
			return this.single_list.checked(this.getProductId(this.product), this.getItemOptions(this.product.itemOptions));
		}

		// @method getProductsInternalid Get list internal ids @returns {Array<String>}
	,	getProductsInternalid: function ()
		{
			return _(this.single_list.get('items').models).map(function (item)
			{
				return item.get('item').internalid;
			});
		}

		// @method addItemToSingleList Before adding item to the list, checks for not created predefined list
	,	addItemToSingleList: function (e)
		{
			e.preventDefault();

			if (!this.validateLogin(e))
			{
				return;
			}

			var self = this;		

			// Check if predefined list was not created yet
			if (!self.single_list.get('internalid'))
			{
				self.single_list.save().done(function () 
				{
					self.single_list.set('items', new ProductListItemCollection([]));
					self.renderAfterAdded(self);
				});
			}
			else
			{
				self.renderAfterAdded(self);
			}
		}

		// @method renderAfterAdded Adds the item to the list
	,	renderAfterAdded: function (self)
		{
			if (!this.validateGiftCertificate(self.product))
			{
				return;
			}

			self.addItemToList(self.product, self.single_list);
			self.render();

			self.saveAndShowConfirmationMessage(
				_('Good! You added this item to your product list').translate()
			);

			this.$('[data-action="add-product-to-single-list"]').attr('disabled', 'true');
		}

		// @method getContext @return {ProductList.ControlSingle.View.Context}
	,	getContext: function ()
		{
			var model = this.single_list;

			// @class ProductList.ControlSingle.View.Context
			return {
				// @property {Boolean} isProductAlreadyAdded
				isProductAlreadyAdded: this.isProductAlreadyAdded()
				// @property {String} name
			,	name: model.get('name')
				// @property {String} id
			,	id: model.get('internalid')
			};
		}
	});
});