{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<!-- Main Menu Starts -->
	<nav id="main-menu" class="navbar" role="navigation">
	<!-- Nav Header Starts -->
		<div class="navbar-header">
			<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-cat-collapse">
				<span class="sr-only">Toggle Navigation</span>
				<i class="fa fa-bars"></i>
			</button>
		</div>
	<!-- Nav Header Ends -->
	<!-- Navbar Cat collapse Starts -->
		<div class="collapse navbar-collapse navbar-cat-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="category-list.html" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10">Shop</a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							{{#each categories}}
								{{#if categories}}
									{{#each categories}}
										{{#if categories}}
											<ul class="list-unstyled">
												<li class="dropdown-header">
													<a class="{{class}}" {{objectToAtrributes this}}>{{translate text}}</a>
												</li>
													{{#each categories}}
														<li>
															<a class="{{class}}" {{objectToAtrributes this}}>{{translate text}}</a>
														</li>
													{{/each}}
											</ul>
										{{/if}}
									{{/each}}
								{{/if}}
							{{/each}}
						</div>
					</div>
				</li>
				<li><a href="category-list.html">BROWSE BY GAME</a></li>
				<li><a href="category-list.html">Blog</a></li>
				<li><a href="category-list.html">PRODUCT POLL</a></li>
				<li><a href="category-list.html">SHIPPING & RETURNS</a></li>
				<li><a href="category-list.html">ASSEMBLY GUIDE</a></li>
				<li><a href="category-list.html">FAQ</a></li>
				<li><a href="category-list.html">Contact Us</a></li>
			</ul>
		</div>
	<!-- Navbar Cat collapse Ends -->
	</nav>
<!-- Main Menu Ends -->

<!--
<nav class="header-menu-secondary-nav">

	<div class="header-menu-search">
		<button class="header-menu-search-link" data-action="show-sitesearch" title="{{translate 'Search'}}">
			<i class="header-menu-search-icon"></i>
		</button>
	</div>


	<ul class="header-menu-level1">

		{{#each categories}}
			{{#if text}}
				<li {{#if categories}}data-toggle="categories-menu"{{/if}}>
					<a class="{{class}}" {{objectToAtrributes this}}>
					{{translate text}}
					</a>
					{{#if categories}}
					<ul class="header-menu-level-container">
						<li>
							<ul class="header-menu-level2">
								{{#each categories}}
								<li>
									<a class="{{class}}" {{objectToAtrributes this}}>{{translate text}}</a>

									{{#if categories}}
									<ul class="header-menu-level3">
										{{#each categories}}
										<li>
											<a class="{{class}}" {{objectToAtrributes this}}>{{translate text}}</a>
										</li>
										{{/each}}
									</ul>
									{{/if}}
								</li>
								{{/each}}
							</ul>
						</li>
					</ul>
					{{/if}}
				</li>
			{{/if}}
		{{/each}}

	</ul>

</nav>
 -->