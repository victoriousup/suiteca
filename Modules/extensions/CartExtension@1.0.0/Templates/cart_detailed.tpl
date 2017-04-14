{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div class="cart-detailed">
{{#if showLines}}
	<h2 class="main-heading text-center">
		{{pageHeader}}
	</h2>
	<div class="cart-detailed-body">
		<section class="">
			<div class="cart-detailed-proceed-to-checkout-container">
				<a class="cart-detailed-proceed-to-checkout" data-action="sticky" href="#" data-touchpoint="checkout" data-hashtag="#">
						{{translate 'Proceed to Checkout'}}
				</a>
			</div>
			<div data-confirm-message class="cart-detailed-confirm-message"></div>

			<div class="table-responsive shopping-cart-table">
				<!-- <table class="cart-detailed-item-view-cell-actionable-table cart-detailed-table-row-with-border table table-bordered"> -->
				<table class="table table-bordered">
					<thead>
						<tr>
							<td class="text-center">
								Image
							</td>
							<td class="text-center">
								Product Details
							</td>							
							<td class="text-center">
								Price
							</td>
							<td class="text-center">
								SKU
							</td>
							<td class="text-center">
								Quantity
							</td>
							<td class="text-center">
								Total
							</td>
							<td class="text-center">
								Action
							</td>
						</tr>
					</thead>
					<tbody data-view="Item.ListNavigable">
					</tbody>

					<tfoot>
						<tr>
						  <td colspan="5" class="text-right">
							<strong>Total :</strong>
						  </td>
						  <td colspan="2" class="text-left">
							{{ summary.subtotal_formatted }}
						  </td>
						</tr>
					</tfoot>
				</table>
			</div>
		</section>
		<section class="">
			<div data-view="Cart.Summary"></div>
		</section>
	</div>
	<div class="cart-detailed-footer">
		<div data-type="saved-for-later-placeholder" class="cart-detailed-savedforlater">
		</div>

		<div data-view="RecentlyViewed.Items" class="cart-detailed-recently-viewed" itemscope="" itemtype="http://schema.org/ItemList"></div>
		<div data-view="Related.Items" class="cart-detailed-related" itemscope="" itemtype="http://schema.org/ItemList"></div>
		<div data-view="Correlated.Items" class="cart-detailed-correlated" itemscope="" itemtype="http://schema.org/ItemList"></div>
	</div>
{{else}}
	<section class="cart-detailed-body-empty">
		<h2 class="cart-detailed-body-empty-title">{{translate 'Your Shopping Cart is empty'}}</h2>
		<p class="cart-detailed-body-empty-info">
			{{translate 'Continue Shopping on our <a href="/" data-touchpoint="home">Home Page</a>' }}
		</p>
		<div data-type="saved-for-later-placeholder" class="cart-detailed-row-fluid"></div>
	</section>
{{/if}}
</div>