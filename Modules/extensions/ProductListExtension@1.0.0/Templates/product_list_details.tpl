{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<a href="/wishlist" class="product-list-details-button-back">
	<i class="product-list-details-button-back-icon"></i>
	{{translate 'Go to Product Lists'}}
</a>
<div data-confirm-message class="product-list-details-confirm-message"></div>
<section class="product-list-details panel panel-smart">
	<header class="product-list-details-header panel-heading">
		<h3 class="product-list-details-title panel-title">
			{{#if isTypePredefined}}{{translate name}}{{else}}{{name}}{{/if}}
			{{#if hasItems}}
			<span class="product-list-details-count">({{itemsLength}} {{#if hasOneItem}}{{translate 'Product'}}{{else}}{{translate 'Products'}}{{/if}})</span>
			{{/if}}
		</h3>
		<div data-view="ListHeader" style="{{#unless showListHeader}}display:none{{/unless}}"></div>
	</header>
	{{#if hasItems}}
		<table class="product-list-details-list-items {{#if isChecked}}active{{/if}}" data-type="product-list-items">
			<tbody data-view="ProductList.DynamicDisplay">
			</tbody>
		</table>
	{{else}}
		<div class="product-list-details-no-items">
			<h5>{{translate 'You don\'t have items in this list yet. Explore the store or search for an item you would like to add.'}}</h5>
		</div>
	{{/if}}
</section>