{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div class="cart-summary registration-area">
	<div class="cart-summary-container">
		<div class="col-md-6">
			<div class="panel panel-smart">
				<div class="panel-heading">
					<h3 class="panel-title">
						{{ translate 'Shipping & Taxes'}}
					</h3>
				</div>
				<div class="panel-body">
				<!-- Form Starts -->
					<form class="form-horizontal" action="#" data-action="estimate-tax-ship" role="form">
						<div class="form-group control-group">
							<label for="inputCountry" class="col-sm-3 control-label">Country :</label>
							<div class="col-sm-9">
								<select name="country" class="form-control" id="country" data-action="estimate-tax-ship-country">
									{{#each countries}}
										<option value="{{code}}" {{#if selected}}selected{{/if}}>{{name}}</option>
									{{/each}}
								</select>
							</div>
						</div>
						{{#if isZipCodeRequire}}
						<div class="form-group">
							<label for="zip" class="col-sm-3 control-label">
							{{#if isDefaultCountryUS}}
								{{ translate 'Zip Code :' }}
							{{else}}
								{{ translate 'Postal Code :' }}
							{{/if}}
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"  name="zip" id="zip" placeholder="Zip Code" value="{{shippingZipCode}}">
							</div>
						</div>
						{{/if}}
						<div class="form-group" data-validation="control">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-default">
									{{ translate 'Estimate' }}
								</button>
							</div>
						</div>
					</form>
				<!-- Form Ends -->
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="panel panel-smart">
				<div class="panel-heading">
					<h3 class="panel-title">
						Discount Coupon Code
					</h3>
				</div>
				<div class="panel-body">
				<!-- Form Starts -->
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="inputCouponCode" class="col-sm-3 control-label">Coupon Code :</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="inputCouponCode" placeholder="Coupon Code">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-default">
									Apply Coupon
								</button>
							</div>
						</div>
					</form>
				<!-- Form Ends -->
				</div>
			</div>		
		</div>
		{{#if isPriceEnabled}}
			<div class="cart-summary-subtotal">
				<p class="cart-summary-grid-float">
					<span class="cart-summary-amount-subtotal">
						{{ summary.subtotal_formatted }}
					</span>
						{{#if isSingleItem}}
							{{translate 'Subtotal <span class="cart-summary-item-quantity-subtotal">$(0) item</span>'itemCount}}
						{{else}}
							{{translate 'Subtotal <span class="cart-summary-item-quantity-subtotal">$(0) items</span>' itemCount}}
						{{/if}}
				</p>
				{{#if showEstimate}}
					<div class="cart-summary-subtotal-legend">
						{{translate 'Total does not include shipping or tax'}}
					</div>
				{{/if}}
			</div>

			<div data-view="CartPromocodeListView"></div>

			{{#if showDiscountTotal}}
				<div class="cart-summary-discount-applied">
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-discount-total">
							{{summary.discounttotal_formatted}}
						</span>
						{{translate 'Discount Total'}}
					</p>
				</div>
			{{/if}}

			{{#if showGiftCertificates}}
				<div class="cart-summary-giftcertificate-applied">
					<h5 class="cart-summary-giftcertificate-applied-title">
						{{translate 'Gift Certificates Applied ($(0))' giftCertificates.length}}
					</h5>
					<div data-view="GiftCertificates"></div>
				</div>
			{{/if}}

			{{#if showEstimate}}
				<div class="cart-summary-expander-container">
					<div class="cart-summary-expander-head">
						<a class="cart-summary-expander-head-toggle collapsed" data-toggle="collapse" data-target="#estimate-shipping-form" aria-expanded="false" aria-controls="estimate-shipping-form">
							{{translate 'Estimate Tax &amp; Shipping'}} <i data-toggle="tooltip" class="cart-summary-expander-tooltip" title="{{translate '<b>Shipping Estimator</b><br>Shipping fees are based on your shipping location. Please enter your information to view estimated shipping costs.'}}" ></i><i class="cart-summary-expander-toggle-icon"></i>
						</a>
					</div>
					<div class="cart-summary-expander-body collapse" id="estimate-shipping-form" role="tabpanel">
						<div class="cart-summary-expander-container">
							<form action="#" data-action="estimate-tax-ship">
								{{#if singleCountry}}
									<span>{{translate 'Ship available only to $(0)' singleCountryName}}</span>
									<input name="country" id="country" class="country" value="{{singleCountryCode}}" type="hidden"/>
								{{else}}
									<div class="control-group">
										<label class="cart-summary-label" for="country">{{translate 'Select Country'}}</label>
										<select name="country" id="country" class="cart-summary-estimate-input country" data-action="estimate-tax-ship-country">
											{{#each countries}}
												<option value="{{code}}" {{#if selected}}selected{{/if}}>{{name}}</option>
											{{/each}}
										</select>
									</div>
								{{/if}}
								{{#if isZipCodeRequire}}
									<div data-validation="control-group">
										<label for="zip" class="cart-summary-label">
											{{#if isDefaultCountryUS}}
												{{translate 'Ship to the following zip code'}}
											{{else}}
												{{translate 'Ship to the following postal code'}}
											{{/if}}
										</label>
										<div data-validation="control">
											<input type="text" name="zip" id="zip" class="cart-summary-zip-code" value="{{shippingZipCode}}" />
										</div>
									</div>
								{{/if}}
								<button class="cart-summary-button-estimate">{{translate 'Estimate'}}</button>
							</form>
						</div>
					</div>
				</div>
			{{else}}
				<div class="cart-summary-shipping-cost-applied">
					<div class="cart-summary-grid">
						<div class="cart-summary-label-shipto">
							{{translate 'Ship to:'}}
							<span class="cart-summary-label-shipto-success">{{shipToText}}</span>
							<a href="#" data-action="remove-shipping-address">
								<span class="cart-summary-remove-action"><i></i></span>
							</a>
						</div>
					</div>
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-shipping">
							{{summary.shippingcost_formatted}}
						</span>
							{{translate 'Shipping'}}
					</p>

					{{#if showHandlingCost}}
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-handling">
							{{summary.handlingcost_formatted}}
						</span>
							{{translate 'Handling'}}
					</p>
					{{/if}}

					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-tax">
							{{summary.taxtotal_formatted}}
						</span>
							{{translate 'Tax'}}
					</p>
				</div>

				<div class="cart-summary-total">
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-total">
							{{summary.total_formatted}}
						</span>
							{{#if showLabelsAsEstimated}}
								{{translate 'Estimated Total'}}
							{{else}}
								{{translate 'Total'}}
							{{/if}}
					</p>
				</div>
			{{/if}}

			{{#if showActions}}
				<div class="cart-summary-button-container">
					<a id="btn-proceed-checkout" class="cart-summary-button-proceed-checkout {{#if showProceedButton}} cart-summary-button-proceed-checkout-sb {{/if}}" href="#" data-touchpoint="checkout" data-hashtag="#">
						{{translate 'Proceed to Checkout'}}
					</a>

					{{#if showPaypalButton}}
						<div class="cart-summary-btn-paypal-express">
							<a href="#" data-touchpoint="checkout" data-hashtag="#" data-parameters="paypalexpress=T">
										<img src="{{paypalButtonImageUrl}}" alt="PayPal Express" />
							</a>
						</div>
					{{/if}}

					{{#if isWSDK}}
						<a class="cart-summary-continue-shopping" href="{{continueURL}}">
							{{translate 'Continue Shopping'}}
						</a>
					{{/if}}
				</div>
			{{/if}}
			{{#if showPromocodeForm}}
				<div class="cart-summary-grid">
					<div class="cart-summary-expander-head">
						<a class="cart-summary-expander-head-toggle collapsed" data-toggle="collapse" data-target="#promo-code-container" aria-expanded="false" aria-controls="promo-code-container">
							{{translate 'Have a Promo Code?'}}
							<i data-toggle="tooltip" class="cart-summary-expander-tooltip" title="{{translate '<b>Promo Code</b><br>To redeem a promo code, simply enter your information and we will apply the offer to your purchase during checkout.'}}"></i>
							<i class="cart-summary-expander-toggle-icon-promocode"></i>
						</a>
					</div>
					<div class="cart-summary-expander-body collapse" role="form" id="promo-code-container" aria-expanded="false">
						<div data-view="Cart.PromocodeFrom"></div>
					</div>
				</div>
			{{/if}}
		{{else}}
			<div class="cart-summary-message cart-summary-msg-description">
				<p class="cart-summary-login-to-see-price">
					{{translate 'Please <a href="$(0)">log in</a> to see prices or purchase items' urlLogin}}
				</p>
			</div>
		{{/if}}
	</div>
</div>
<!-- <div class="cart-summary">
	<div class="cart-summary-container">
		<h3 class="cart-summary-title">
			{{translate 'Order Summary'}}
		</h3>

		{{#if isPriceEnabled}}
			<div class="cart-summary-subtotal">
				<p class="cart-summary-grid-float">
					<span class="cart-summary-amount-subtotal">
						{{ summary.subtotal_formatted }}
					</span>
						{{#if isSingleItem}}
							{{translate 'Subtotal <span class="cart-summary-item-quantity-subtotal">$(0) item</span>'itemCount}}
						{{else}}
							{{translate 'Subtotal <span class="cart-summary-item-quantity-subtotal">$(0) items</span>' itemCount}}
						{{/if}}
				</p>
				{{#if showEstimate}}
					<div class="cart-summary-subtotal-legend">
						{{translate 'Total does not include shipping or tax'}}
					</div>
				{{/if}}
			</div>

			<div data-view="CartPromocodeListView"></div>

			{{#if showDiscountTotal}}
				<div class="cart-summary-discount-applied">
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-discount-total">
							{{summary.discounttotal_formatted}}
						</span>
						{{translate 'Discount Total'}}
					</p>
				</div>
			{{/if}}

			{{#if showGiftCertificates}}
				<div class="cart-summary-giftcertificate-applied">
					<h5 class="cart-summary-giftcertificate-applied-title">
						{{translate 'Gift Certificates Applied ($(0))' giftCertificates.length}}
					</h5>
					<div data-view="GiftCertificates"></div>
				</div>
			{{/if}}

			{{#if showEstimate}}
				<div class="cart-summary-expander-container">
					<div class="cart-summary-expander-head">
						<a class="cart-summary-expander-head-toggle collapsed" data-toggle="collapse" data-target="#estimate-shipping-form" aria-expanded="false" aria-controls="estimate-shipping-form">
							{{translate 'Estimate Tax &amp; Shipping'}} <i data-toggle="tooltip" class="cart-summary-expander-tooltip" title="{{translate '<b>Shipping Estimator</b><br>Shipping fees are based on your shipping location. Please enter your information to view estimated shipping costs.'}}" ></i><i class="cart-summary-expander-toggle-icon"></i>
						</a>
					</div>
					<div class="cart-summary-expander-body collapse" id="estimate-shipping-form" role="tabpanel">
						<div class="cart-summary-expander-container">
							<form action="#" data-action="estimate-tax-ship">
								{{#if singleCountry}}
									<span>{{translate 'Ship available only to $(0)' singleCountryName}}</span>
									<input name="country" id="country" class="country" value="{{singleCountryCode}}" type="hidden"/>
								{{else}}
									<div class="control-group">
										<label class="cart-summary-label" for="country">{{translate 'Select Country'}}</label>
										<select name="country" id="country" class="cart-summary-estimate-input country" data-action="estimate-tax-ship-country">
											{{#each countries}}
												<option value="{{code}}" {{#if selected}}selected{{/if}}>{{name}}</option>
											{{/each}}
										</select>
									</div>
								{{/if}}
								{{#if isZipCodeRequire}}
									<div data-validation="control-group">
										<label for="zip" class="cart-summary-label">
											{{#if isDefaultCountryUS}}
												{{translate 'Ship to the following zip code'}}
											{{else}}
												{{translate 'Ship to the following postal code'}}
											{{/if}}
										</label>
										<div data-validation="control">
											<input type="text" name="zip" id="zip" class="cart-summary-zip-code" value="{{shippingZipCode}}" />
										</div>
									</div>
								{{/if}}
								<button class="cart-summary-button-estimate">{{translate 'Estimate'}}</button>
							</form>
						</div>
					</div>
				</div>
			{{else}}
				<div class="cart-summary-shipping-cost-applied">
					<div class="cart-summary-grid">
						<div class="cart-summary-label-shipto">
							{{translate 'Ship to:'}}
							<span class="cart-summary-label-shipto-success">{{shipToText}}</span>
							<a href="#" data-action="remove-shipping-address">
								<span class="cart-summary-remove-action"><i></i></span>
							</a>
						</div>
					</div>
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-shipping">
							{{summary.shippingcost_formatted}}
						</span>
							{{translate 'Shipping'}}
					</p>

					{{#if showHandlingCost}}
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-handling">
							{{summary.handlingcost_formatted}}
						</span>
							{{translate 'Handling'}}
					</p>
					{{/if}}

					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-tax">
							{{summary.taxtotal_formatted}}
						</span>
							{{translate 'Tax'}}
					</p>
				</div>

				<div class="cart-summary-total">
					<p class="cart-summary-grid-float">
						<span class="cart-summary-amount-total">
							{{summary.total_formatted}}
						</span>
							{{#if showLabelsAsEstimated}}
								{{translate 'Estimated Total'}}
							{{else}}
								{{translate 'Total'}}
							{{/if}}
					</p>
				</div>
			{{/if}}

			{{#if showActions}}
				<div class="cart-summary-button-container">
					<a id="btn-proceed-checkout" class="cart-summary-button-proceed-checkout {{#if showProceedButton}} cart-summary-button-proceed-checkout-sb {{/if}}" href="#" data-touchpoint="checkout" data-hashtag="#">
						{{translate 'Proceed to Checkout'}}
					</a>

					{{#if showPaypalButton}}
						<div class="cart-summary-btn-paypal-express">
							<a href="#" data-touchpoint="checkout" data-hashtag="#" data-parameters="paypalexpress=T">
										<img src="{{paypalButtonImageUrl}}" alt="PayPal Express" />
							</a>
						</div>
					{{/if}}

					{{#if isWSDK}}
						<a class="cart-summary-continue-shopping" href="{{continueURL}}">
							{{translate 'Continue Shopping'}}
						</a>
					{{/if}}
				</div>
			{{/if}}
			{{#if showPromocodeForm}}
				<div class="cart-summary-grid">
					<div class="cart-summary-expander-head">
						<a class="cart-summary-expander-head-toggle collapsed" data-toggle="collapse" data-target="#promo-code-container" aria-expanded="false" aria-controls="promo-code-container">
							{{translate 'Have a Promo Code?'}}
							<i data-toggle="tooltip" class="cart-summary-expander-tooltip" title="{{translate '<b>Promo Code</b><br>To redeem a promo code, simply enter your information and we will apply the offer to your purchase during checkout.'}}"></i>
							<i class="cart-summary-expander-toggle-icon-promocode"></i>
						</a>
					</div>
					<div class="cart-summary-expander-body collapse" role="form" id="promo-code-container" aria-expanded="false">
						<div data-view="Cart.PromocodeFrom"></div>
					</div>
				</div>
			{{/if}}
		{{else}}
			<div class="cart-summary-message cart-summary-msg-description">
				<p class="cart-summary-login-to-see-price">
					{{translate 'Please <a href="$(0)">log in</a> to see prices or purchase items' urlLogin}}
				</p>
			</div>
		{{/if}}
	</div>
</div>
 -->