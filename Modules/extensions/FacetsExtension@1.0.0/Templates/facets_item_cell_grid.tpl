{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div class="facets-item-cell-grid product-col" data-type="item" data-item-id="{{itemId}}" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/Product" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}">
	<meta itemprop="url" content="{{url}}"/>

	<div class="facets-item-cell-grid-image-wrapper image">
		<a class="facets-item-cell-grid-link-image" href="{{url}}">
			<img class="facets-item-cell-grid-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}" itemprop="image"/>
		</a>
		<!--{{#if isEnvironmentBrowser}}
		<div class="facets-item-cell-grid-quick-view-wrapper">
			<a href="{{url}}" class="facets-item-cell-grid-quick-view-link" data-toggle="show-in-modal">
				<i class="facets-item-cell-grid-quick-view-icon"></i>
				{{translate 'Quick View'}}
			</a>
		</div>
		{{/if}}-->
	</div>

	<div class="facets-item-cell-grid-details caption">
		<a class="facets-item-cell-grid-title" href="{{url}}">
			<h4 itemprop="name">{{name}}</h4>
		</a>

		<div class="facets-item-cell-grid-price price" data-view="ItemViews.Price">
		</div>

		<!--{{#if showRating}}
		<div class="facets-item-cell-grid-rating" itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating" data-view="GlobalViews.StarRating">
		</div>
		{{/if}}-->

		<!--<div data-view="ItemDetails.Options"></div>-->
		<!--<div class="facets-item-cell-grid-stock">
			<div data-view="ItemViews.Stock"></div>
		</div>-->

		<form class="facets-item-cell-grid-add-to-cart" data-toggle="add-to-cart">
			<input class="facets-item-cell-grid-add-to-cart-itemid" type="hidden" value="{{itemId}}" name="item_id"/>
			{{#if canAddToCart}} 
			<input name="quantity" class="facets-item-cell-grid-add-to-cart-quantity" type="number" min="1" value="{{minQuantity}}"/>
			{{else}}
			<input name="quantity" class="facets-item-cell-grid-add-to-cart-quantity" type="number" min="1" value="{{minQuantity}}" disabled="disabled"/>
			{{/if}}
			<div class="cart-button button-group">			

			<a href="#" title="" class="btn btn-wishlist" data-original-title="Wishlist" >
				<i class="fa fa-heart"></i>
			</a>
			<a href="#" title="" class="btn btn-compare" data-original-title="Compare">
				<i class="fa fa-bar-chart-o"></i>
			</a>
			{{#if canAddToCart}} 
			<button type="submit" class="btn btn-cart">{{translate 'Add to Cart'}} <i class="fa fa-shopping-cart"></i></button>
			{{else}}
			<button type="submit" class="btn btn-cart" disabled="disabled">{{translate 'Add to Cart'}} <i class="fa fa-shopping-cart"></i></button>
			{{/if}}
			</div>
		</form>
	</div>
</div>