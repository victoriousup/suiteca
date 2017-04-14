{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div class="item-details">
	<div data-cms-area="item_details_banner" data-cms-area-filters="page_type"></div>

	<header class="item-details-header">
		<div id="banner-content-top" class="item-details-banner-top"></div>
	</header>
	<div class="item-details-divider-desktop"></div>
	<article class="item-details-content" itemscope itemtype="http://schema.org/Product">
		<meta itemprop="url" content="{{model._url}}">
		<div id="banner-details-top" class="item-details-banner-top-details"></div>

		<section class="item-details-main-content product-info full">

			<div class="item-details-image-gallery-container col-sm-4 images-block">
				<div id="banner-image-top" class="content-banner banner-image-top"></div>
				<div data-view="ItemDetails.ImageGallery"></div>
				<div id="banner-image-bottom" class="content-banner banner-image-bottom"></div>
			</div>
			<!--<div class="item-details-divider"></div>
			<div class="item-details-divider"></div>-->
			<div class="item-details-main col-sm-8 product-details panel-smart">
				<div class="item-details-content-header col-sm-12">
					<h2 class="item-details-content-header-title" itemprop="name">{{model._pageHeader}}</h2>
					<div data-cms-area="item_info" data-cms-area-filters="path"></div>
				</div>
				<div class="clearfix"></div>
				<hr>
				<section class="item-details-info col-sm-12">
					<div class="item-details-banner-summary-bottom"></div>
					{{#if showReviews}}
					<span class="pull-left text-uppercase" style="min-width: 130px;">{{translate 'Reviews: '}}</span>
					<div class="item-details-rating-header pull-left" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
						<div class="item-details-rating-header-rating" data-view="Global.StarRating"></div>
					</div>
					{{/if}}
					<div class="clearfix"></div>
					<div class="item-details-sku-container">
						<span class="item-details-sku">
							{{translate 'SKU:'}}
						</span>
						<span class="item-details-sku-value" itemprop="sku">
							{{sku}}
						</span>
					</div>
					<div class="clearfix"></div>
					<span class="pull-left text-uppercase" style="min-width: 130px;">{{translate 'Availability: '}}</span>
					<div data-view="Item.Stock"></div>
				</section>

				<div class="clearfix"></div>
				<hr>

				<section class="item-details-info col-sm-12">
					<span class="price-head pull-left">{{translate 'Price : '}}</span>
					<div data-view="Item.Price"></div>
				</section>

				{{#if showRequiredReference}}
					<div class="item-details-text-required-reference-container col-md-12">
						<small>Required <span class="item-details-text-required-reference">*</span></small>
					</div>
				{{/if}}

				<div class="clearfix"></div>
				<hr>

				<section class="item-details-options col-sm-12">
					<h3>Available Options</h3>
					{{#if isItemProperlyConfigured}}
						{{#if hasAvailableOptions}}
							<button class="item-details-options-pusher" data-type="sc-pusher" data-target="item-details-options"> {{#if isReadyForCart}}{{ translate 'Options' }}{{else}}{{ translate 'Select options' }}{{/if}} {{#if hasSelectedOptions}}:{{/if}} <i></i>
								{{#each selectedOptions}}
									{{#if @first}}
										<span> {{ label }} </span>
									{{else}}
										<span> , {{ label }} </span>
									{{/if}}
								{{/each}}
							</button>
						{{/if}}

						<div class="item-details-options-content" data-action="pushable" data-id="item-details-options">

							<div class="item-details-options-content-price" data-view="Item.Price"></div>

							<div class="item-details-options-content-stock"  data-view="Item.Stock"></div>

							<div data-view="ItemDetails.Options"></div>
						</div>
					{{else}}
						<div class="alert alert-error">
							{{translate '<b>Warning</b>: This item is not properly configured, please contact your administrator.'}}
						</div>

					{{/if}}
				</section>

				{{#if isPriceEnabled}}
				{{#if isItemProperlyConfigured}}
					<section class="item-details-actions  col-sm-12">

						<form action="#" class="item-details-add-to-cart-form" data-validation="control-group">
							{{#if showQuantity}}
								<input type="hidden" name="quantity" id="quantity" value="1">
							{{else}}
								<div class="item-details-options-quantity" data-validation="control">
									<label for="quantity" class="item-details-options-quantity-title control-label text-uppercase">
										{{translate 'Quantity'}}
									</label>

									<button class="item-details-quantity-remove" data-action="minus" {{#if isMinusButtonDisabled}}disabled{{/if}}>-</button>
									<input type="number" name="quantity" id="quantity" class="item-details-quantity-value" value="{{quantity}}" min="1">
									<button class="item-details-quantity-add" data-action="plus">+</button>

									{{#if showMinimumQuantity}}
										<small class="item-details-options-quantity-title-help">
											{{translate 'Minimum of $(0) required' minQuantity}}
										</small>
									{{/if}}
								</div>
							{{/if}}

							{{#unless isReadyForCart}}
								{{#if showSelectOptionMessage}}
									<p class="item-details-add-to-cart-help">
										<i class="item-details-add-to-cart-help-icon"></i>
										<span class="item-details-add-to-cart-help-text">{{translate 'Please select options before adding to cart'}}</span>
									</p>
								{{/if}}
							{{/unless}}
							<!--<div class="item-details-actions-container">
								<div class="item-details-add-to-cart">
									<button data-type="add-to-cart" data-action="sticky" class="item-details-add-to-cart-button" {{#unless isReadyForCart}}disabled{{/unless}}>
										{{translate 'Add to Cart'}}
									</button>
								</div>
							</div>
							<div class="item-details-actions-container">

								<div data-view="ItemDetails.AddToQuote"></div>

								{{#if isReadyForWishList}}
									<div class="item-details-add-to-wishlist" data-type="product-lists-control"></div>
								{{else}}
									<div class="item-details-add-to-wishlist" data-type="product-lists-control" data-disabledbutton="true"></div>
								{{/if}}
							</div>-->
							<div class="item-details-actions-container">
								<div class="cart-button button-group">
									{{#if isReadyForWishList}}
									<button type="button" title="" class="btn btn-wishlist">
										<i class="fa fa-heart"></i>
									</button>
									{{else}}
									<button type="button" title="" class="btn btn-wishlist"  data-disabledbutton="true">
										<i class="fa fa-heart"></i>
									</button>
									{{/if}}
									
									<button type="button" title="" class="btn btn-compare" data-original-title="Compare">
										<i class="fa fa-bar-chart-o"></i>
									</button>
									<button type="button" class="btn btn-cart"  data-type="add-to-cart" data-action="sticky" {{#unless isReadyForCart}}disabled{{/unless}}>
										{{translate 'Add to Cart'}}
										<i class="fa fa-shopping-cart"></i> 
									</button>									
								</div>
							</div>
						</form>

						<div data-type="alert-placeholder" data-role="pdp-feedback"></div>

					</section>
				{{/if}}
				{{/if}}

				<div class="item-details-main-bottom-banner col-md-12">
					<div data-view="SocialSharing.Flyout"></div>
					<div class="item-details-banner-summary-bottom"></div>
				</div>
			<div id="banner-details-bottom" class="item-details-banner-details-bottom" data-cms-area="item_info_bottom" data-cms-area-filters="page_type"></div>
			</div>
		</section>

		<section class="item-details-more-info-content">
			{{#if showDetails}}

				{{#each details}}
					{{!-- Mobile buttons --}}
					<button class="item-details-info-pusher" data-target="item-details-info-{{ @index }}" data-type="sc-pusher">
						{{ name }} <i></i>
						<span class="item-details-info-hint"> {{{trimHtml content 150}}} </span>
					</button>
				{{/each}}

				<div class="item-details-more-info-content-container">

					<div class="content-banner banner-content-top"></div>

					<div role="tabpanel" class="tabs-panel panel-smart">
						{{!-- When more than one detail is shown, these are the tab headers  --}}
						<ul class="item-details-more-info-content-tabs nav nav-tabs" role="tablist">
							{{#each details}}
								<li class="{{#if @first}} active {{/if}}" role="presentation">
									<a href="#" data-target="#item-details-info-tab-{{@index}}" data-toggle="tab">{{name}}</a>
								</li>
							{{/each}}
							{{#if showReviews}}
								<li class="" role="presentation">
									<a href="#" data-target="#item-details-info-tab-review" data-toggle="tab">Review</a>
								</li>
							{{/if}}
						</ul>
						{{!-- Tab Contents --}}
						<div class="item-details-tab-content tab-content clearfix" >
							{{#each details}}
								<div role="tabpanel" class="item-details-tab-content-panel tab-pane {{#if @first}}active{{/if}}" id="item-details-info-tab-{{@index}}" itemprop="{{itemprop}}" data-action="pushable" data-id="item-details-info-{{ @index }}">
									<!--<h2>{{name}}</h2>-->
									<div id="item-details-content-container-{{@index}}">{{{content}}}</div>
								</div>
							{{/each}}
							{{#if showReviews}}
							<div role="tabpanel" class="item-details-tab-content-panel tab-pane {{#if @first}}active{{/if}}" id="item-details-info-tab-review" itemprop="{{itemprop}}" data-action="pushable" data-id="item-details-info-review">
								<button class="item-details-product-review-pusher" data-target="item-details-review" data-type="sc-pusher">{{ translate 'Reviews' }}
									<div class="item-details-product-review-pusher-rating" data-view="Global.StarRating"></div><i></i>
								</button>
								<div class="item-details-more-info-content-container" data-action="pushable" data-id="item-details-review">
									<div data-view="ProductReviews.Center"></div>
								</div>
							</div>
							{{/if}}
							<div class="item-details-action">
								<a href="#" class="item-details-more" data-action="show-more">{{translate 'See More'}}</a>
								<a href="#" class="item-details-less" data-action="show-more">{{translate 'See Less'}}</a>
							</div>
						</div>
					</div>
					<div id="banner-content-bottom" class="content-banner banner-content-bottom"></div>
				</div>
			{{/if}}
		</section>

		<div class="item-details-divider-desktop"></div>

<!--		<section class="item-details-product-review-content" >
			{{#if showReviews}}
				<button class="item-details-product-review-pusher" data-target="item-details-review" data-type="sc-pusher">{{ translate 'Reviews' }}
					<div class="item-details-product-review-pusher-rating" data-view="Global.StarRating"></div><i></i>
				</button>
				<div class="item-details-more-info-content-container" data-action="pushable" data-id="item-details-review">
					<div data-view="ProductReviews.Center"></div>
				</div>
			{{/if}}
		</section>-->

		<div class="item-details-content-related-items">
			<div data-view="Related.Items"></div>
		</div>

		<div class="item-details-content-correlated-items">
			<div data-view="Correlated.Items"></div>
		</div>
		<div class="content-banner banner-details-bottom" data-cms-area="item_details_banner_bottom" data-cms-area-filters="page_type"></div>
	</article>
</div>
