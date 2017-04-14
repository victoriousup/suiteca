{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<h3 class="side-heading">Categories</h3>
{{#if showFacet}}
<div class="facets-faceted-navigation-item-category">

	{{#if isUncollapsible}}
		<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item">
			<h3 class="facets-faceted-navigation-item-category-title">{{parentName}}</h3>
		</div>
	{{else}}
		<a href="#" class="facets-faceted-navigation-item-category-facet-group-expander list-group-item" data-toggle="collapse" data-target="#{{htmlId}} .facets-faceted-navigation-item-category-facet-group-wrapper" data-type="collapse" title="{{translate 'Category'}}">
			<i class="facets-faceted-navigation-item-category-facet-group-expander-icon"></i>
			<h3 class="facets-faceted-navigation-item-category-title">{{parentName}}</h3>
		</a>
	{{/if}}

	<div class="facets-faceted-navigation-item-category-facet-group list-group" data-type="rendered-facet" data-facet-id="{{facetId}}"  id="{{htmlId}}">

		<div class="{{#if isCollapsed}} collapse {{else}} collapse in {{/if}} facets-faceted-navigation-item-category-facet-group-wrapper">
			<div class="facets-faceted-navigation-item-category-facet-group-content">
				<ul class="facets-faceted-navigation-item-category-facet-optionlist">
					{{#each displayValues}}
						<li class="list-group-item">
							<a class="facets-faceted-navigation-item-category-facet-option {{#if isActive}}option-active{{/if}}" href="{{link}}" title="{{label}}">
								<i class="fa fa-chevron-right"></i> {{displayName}}
							</a>
						</li>
					{{/each}}
				</ul>

				{{#if showExtraValues}}
					<ul class="facets-faceted-navigation-item-category-facet-optionlist-extra collapse">
						{{#each extraValues}}
							<li class="list-group-item">
								<a class="facets-faceted-navigation-item-category-facet-option {{#if isActive}}option-active{{/if}}" href="{{link}}" title="{{label}}">
									<i class="fa fa-chevron-right"></i> {{displayName}}
								</a>
							</li>
						{{/each}}
					</ul>

					<div class="facets-faceted-navigation-item-category-optionlist-extra-wrapper">
						<button class="facets-faceted-navigation-item-category-optionlist-extra-button" data-toggle="collapse" data-target="#{{htmlId}} .facets-faceted-navigation-item-category-facet-optionlist-extra" data-action="see-more">
							<span data-type="see-more">
								{{translate 'See More'}}
							</span>
							<span data-type="see-less" class="facets-faceted-navigation-item-category-alt-caption">
								{{translate 'See Less'}}
							</span>
						</button>
					</div>
				{{/if}}


			</div>
		</div>
	</div>
	<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item">
		<h3 class="facets-faceted-navigation-item-category-title">{{ translate 'Browse By Game' }}</h3>
	</div>
	<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item">
		<h3 class="facets-faceted-navigation-item-category-title">{{ translate 'Blog' }}</h3>
	</div>
	<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item">
		<h3 class="facets-faceted-navigation-item-category-title">{{ translate 'Product Poll' }}</h3>
	</div>
	<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item">
		<h3 class="facets-faceted-navigation-item-category-title">{{ translate 'Shipping & Returns' }}</h3>
	</div>
	<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item">
		<h3 class="facets-faceted-navigation-item-category-title">{{ translate 'Assembly Guide' }}</h3>
	</div>
	<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item">
		<h3 class="facets-faceted-navigation-item-category-title">{{ translate 'FAQ' }}</h3>
	</div>
	<div class="facets-faceted-navigation-item-category-facet-group-expander list-group-item .category-last">
		<h3 class="facets-faceted-navigation-item-category-title">{{ translate 'Contact Us' }}</h3>
	</div>

</div>
{{/if}}
