{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<tr id="{{lineId}}" data-item-id="{{itemId}}" data-type="order-item" itemscope itemtype="http://schema.org/Product" {{#if showGeneralClass}} class="{{generalClass}}" {{/if}}>
	<td class="text-center>
		{{#if isNavigable}}
			<a {{linkAttributes}}>
				<img src="{{resizeImage item._thumbnail.url 'thumbnail'}}" alt="{{item._thumbnail.altimagetext}}">
			</a>
		{{else}}
			<img src="{{resizeImage item._thumbnail.url 'thumbnail'}}" alt="{{item._thumbnail.altimagetext}}">
		{{/if}}
	</td>
	<td class="text-center">
		{{#if isNavigable}}
			<!-- <a {{linkAttributes}} class="item-views-cell-actionable-name-link"> -->
			<a {{linkAttributes}} class="">
				{{item._name}}
			</a>
		{{else}}
			<span class="item-views-cell-actionable-name-viewonly">{{item._name}}</span>
		{{/if}}
	</td>
	<td class="text-center">
		<!-- <div data-view="Item.Price"></div> -->
		<!-- <span class="item-views-price-lead" itemprop="price" data-rate="{{item.pricelevel1}}">{{item.pricelevel1_formatted}}</span> -->
		<span class="" itemprop="price" data-rate="{{item.pricelevel1}}">{{item.pricelevel1_formatted}}</span>
	</td>		
	<td class="text-center">
		<!-- <span class="item-views-cell-actionable-sku-label">{{translate 'SKU: '}}</span> -->
		<!-- <span class="item-views-cell-actionable-sku-value">{{item._sku}}</span> -->
		<span class="">{{item._sku}}</span>
	</td>
	
	<div class="item-views-cell-actionable-options">
		<div data-view="Item.SelectedOptions"></div>
	</div>
	{{#if showSummaryView}}
	<!-- <div class="item-views-cell-actionable-summary" data-view="Item.Summary.View"></div> -->
	<!-- {{#if isPriceEnabled}} -->
	<td class="text-center">
	<div class="cart-item-summary-item-list-actionable-qty">
		<form action="#" class="cart-item-summary-item-list-actionable-qty-form" data-action="update-quantity" data-validation="control-group">
			<input type="hidden" name="internalid" id="update-internalid-{{lineId}}" class="update-internalid-{{lineId}}" value="{{lineId}}">
			<label for="quantity-{{lineId}}" data-validation="control">
				{{#if showQuantity}}
					<input type="hidden" name="quantity" id="quantity-{{lineId}}" value="1">
				{{else}}
					<input type="number" name="quantity" id="quantity-{{lineId}}" class="cart-item-summary-quantity-value quantity-{{lineId}}" value="{{line.quantity}}" min="1"/>

					<!-- <div class="cart-item-summary-item-list-actionable-container-qty"> -->
						<!-- <label class="cart-item-summary-item-list-actionable-label-qty">{{translate 'Quantity:'}}</label> -->
<!-- 						<div class="cart-item-summary-item-list-actionable-input-qty">
								<button class="cart-item-summary-quantity-remove" data-action="minus" {{#if isMinusButtonDisabled}}disabled{{/if}}>-</button>
								<input type="number" name="quantity" id="quantity-{{lineId}}" class="cart-item-summary-quantity-value quantity-{{lineId}}" value="{{line.quantity}}" min="1"/>
								<button class="cart-item-summary-quantity-add" data-action="plus">+</button>
						</div>
								{{#if showMinimumQuantity}}
								<small class="cart-item-summary-quantity-title-help">
								{{translate 'Minimum of $(0) required' minimumQuantity}}
								</small>
								{{/if}}
						</div>
 -->			{{/if}}
				<div data-type="alert-placeholder"></div>
			</label>
		</form>
	</div>
	</td>
	<td class="text-center">
	<!-- <div class="cart-item-summary-item-list-actionable-amount"> -->
	<div class="">
		<!-- <span class="cart-item-summary-item-list-actionable-amount-label">{{translate 'Amount: ' }}</span> -->
		<!-- <span class="cart-item-summary-amount-value">{{ line.total_formatted}}</span> -->
		<span class="cart-item-summary-amount-value">{{ line.total_formatted}}</span>
		{{#if showComparePrice}}
			<small class="muted cart-item-summary-item-view-old-price">{{ li
			ne.amount_formatted}}</small>
		{{/if}}
	</div>
	</td>
	<!-- {{/if}} -->

	{{/if}}
	<div class="item-views-cell-actionable-stock" data-view="ItemViews.Stock.View">
	</div>
	<td class="item-views-cell-actionable-table-last text-center">
		<div data-view="Item.Actions.View"></div>
		{{#if showAlert}}
			<div class="item-views-cell-actionable-alert-placeholder" data-type="alert-placeholder"></div>
		{{/if}}

		{{#if showCustomAlert}}
			<div class="alert alert-{{customAlertType}}">
				{{item._cartCustomAlert}}
			</div>
		{{/if}}
	</td>
</tr>
