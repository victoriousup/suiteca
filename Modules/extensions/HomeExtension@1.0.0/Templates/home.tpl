{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div class="home">
	<div class="home-slider-container">
		<div class="home-image-slider">
			<ul data-slider class="home-image-slider-list">
				{{#each carouselImages}}
					<li>
						<div class="home-slide-main-container">
							<a href="/search">
								<img src="{{resizeImage this ../imageHomeSize}}"  alt="" />
							</a>
						</div>
					</li>
				{{/each}}
			</ul>
		</div>
	</div>
 	<div class="home-banner-main" style="margin-top: 20px;">
		{{#each bottomBannerImages}}
			<div class="col-sm-4">
				<img src="{{resizeImage this ../imageHomeSizeBottom}}" alt="" >
			</div>
		{{/each}}
	</div>
	<h2 class="product-head">FEATURED</h2>
	<section class="home-cms-page-merchandising" data-cms-area="home_feature" data-cms-area-filters="path">
	</section>
	<div class="clearfix"></div>
 	<div class="home-banner-main">
		{{#each bottomBannerImages}}
			<div class="col-sm-4">
				<img src="{{resizeImage this ../imageHomeSizeBottom}}" alt="" >
			</div>
		{{/each}}
	</div>
	<h2 class="product-head">NEW ARRIVALS</h2>
	<section class="home-cms-page-merchandising" data-cms-area="home_newarrival" data-cms-area-filters="path">
	</section>
</div>