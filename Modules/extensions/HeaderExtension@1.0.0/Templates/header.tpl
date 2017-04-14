{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div class="header-message" data-type="message-placeholder"></div>
<!-- Header Top Starts -->
	<div class="header-top">
		<div class="container">
			<!-- Header Links Starts -->
				<div class="col-sm-8 col-xs-12">
					<div class="header-links">
						<ul class="nav navbar-nav pull-left">
							<li>
								<a href="#/">
									<i class="fa fa-home" title="Home"></i>
									<span class="hidden-sm hidden-xs">
										Home
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-heart" title="Wish List"></i>
									<span class="hidden-sm hidden-xs">
										Wish List(0)
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-heart" title="Gift Certificates"></i>
									<span class="hidden-sm hidden-xs">
										Gift Certificates
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-user" title="My Account"></i>
									<span class="hidden-sm hidden-xs">
										My Account
									</span>
								</a>
							</li>
							<li>
								<a href="#cart">
									<i class="fa fa-shopping-cart" title="Shopping Cart"></i>
									<span class="hidden-sm hidden-xs">
										Shopping Cart
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-crosshairs" title="Checkout"></i>
									<span class="hidden-sm hidden-xs">
										Checkout
									</span>
								</a>
							</li>
							<li>
								<a data-touchpoint="register" data-hashtag="login-register" href="#">
									<i class="fa fa-unlock" title="Register"></i>
									<span class="hidden-sm hidden-xs">
										Register
									</span>
								</a>
							</li>
							<li>
								<a data-touchpoint="login" data-hashtag="login-register" href="#">
									<i class="fa fa-lock" title="Login"></i>
									<span class="hidden-sm hidden-xs">
										Login
									</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			<!-- Header Links Ends -->
		</div>
	</div>
<!-- Header Top Ends -->
<!-- Starts -->
	<div class="container">
	<!-- Main Header Starts -->
		<div class="main-header">
			<div class="row">
			<!-- Logo Starts -->
				<div class="col-md-6">
					<div id="logo" data-view="Header.Logo"></div>
				</div>
			<!-- Logo Starts -->
			<!-- Search Starts -->
				<div class="col-md-3">
					<div id="search" data-view="SiteSearch" data-type="SiteSearch"></div>
				</div>
			<!-- Search Ends -->
			<!-- Shopping Cart Starts -->
				<div class="col-md-3">
					<div id="cart" class="btn-group btn-block">
						<button type="button" data-toggle="dropdown" class="btn btn-block btn-lg dropdown-toggle">
							<i class="fa fa-shopping-cart"></i>
							<span class="hidden-md">Cart:</span>
							<span id="cart-total">2 item(s) - $340.00</span>
							<i class="fa fa-caret-down"></i>
						</button>
						<ul class="dropdown-menu pull-right">
							<li>
								<table class="table table-striped hcart">
									<tr>
										<td class="text-center">
											<a href="product.html">
												<img src="images/product-images/hcart-thumb1.jpg" alt="image" title="image" class="img-thumbnail img-responsive" />
											</a>
										</td>
										<td class="text-left">
											<a href="product-full.html">
												Seeds
											</a>
										</td>
										<td class="text-right">x 1</td>
										<td class="text-right">$120.68</td>
										<td class="text-center">
											<a href="#">
												<i class="fa fa-times"></i>
											</a>
										</td>
									</tr>
									<tr>
										<td class="text-center">
											<a href="product.html">
												<img src="images/product-images/hcart-thumb2.jpg" alt="image" title="image" class="img-thumbnail img-responsive" />
											</a>
										</td>
										<td class="text-left">
											<a href="product-full.html">
												Organic
											</a>
										</td>
										<td class="text-right">x 2</td>
										<td class="text-right">$240.00</td>
										<td class="text-center">
											<a href="#">
												<i class="fa fa-times"></i>
											</a>
										</td>
									</tr>
								</table>
							</li>
							<li>
								<table class="table table-bordered total">
									<tbody>
										<tr>
											<td class="text-right"><strong>Sub-Total</strong></td>
											<td class="text-left">$1,101.00</td>
										</tr>
										<tr>
											<td class="text-right"><strong>Eco Tax (-2.00)</strong></td>
											<td class="text-left">$4.00</td>
										</tr>
										<tr>
											<td class="text-right"><strong>VAT (17.5%)</strong></td>
											<td class="text-left">$192.68</td>
										</tr>
										<tr>
											<td class="text-right"><strong>Total</strong></td>
											<td class="text-left">$1,297.68</td>
										</tr>
									</tbody>
								</table>
								<p class="text-right btn-block1">
									<a href="cart.html">
										View Cart
									</a>
									<a href="#">
										Checkout
									</a>
								</p>
							</li>
						</ul>
					</div>
				</div>
			<!-- Shopping Cart Ends -->
			</div>
		</div>
	<!-- Main Header Ends -->
		<div class="" data-view="Header.Menu" data-phone-template="header_sidebar" data-tablet-template="header_sidebar">
		</div>
	</div>
<!-- Ends -->
</div>

<!-- <div class="header-main-wrapper">
	<div class="header-subheader">
		<div class="header-subheader-container">
		<ul class="header-subheader-options">
			{{#if showLanguagesOrCurrencies}}
			<li class="header-subheader-settings">
				<a href="#" class="header-subheader-settings-link" data-toggle="dropdown" title="{{translate 'Settings'}}">
					<i class="header-menu-settings-icon"></i>
					<i class="header-menu-settings-carret"></i>
				</a>
				<div class="header-menu-settings-dropdown">
					<h5 class="header-menu-settings-dropdown-title">{{translate 'Site Settings'}}</h5>
					{{#if showLanguages}}
						<div data-view="Global.HostSelector"></div>
					{{/if}}
					{{#if showCurrencies}}
						<div data-view="Global.CurrencySelector"></div>
					{{/if}}
				</div>
			</li>
			{{/if}}
			<li data-view="StoreLocatorHeaderLink"></li>
			<li data-view="RequestQuoteWizardHeaderLink">Request a Quote</li>
		</ul>
		</div>
	</div>
	<nav class="header-main-nav">

		<div id="banner-header-top" class="content-banner banner-header-top" data-cms-area="header_banner_top" data-cms-area-filters="global"></div>

		<div class="header-sidebar-toggle-wrapper">
			<button class="header-sidebar-toggle" data-action="header-sidebar-show">
				<i class="header-sidebar-toggle-icon"></i>
			</button>
		</div>

		<div class="header-content">
			<div class="header-logo-wrapper">
				<div data-view="Header.Logo"></div>
			</div>


			<div class="header-right-menu">
				<div class="header-menu-profile" data-view="Header.Profile">
				</div>
				<div class="header-menu-locator-mobile" data-view="StoreLocatorHeaderLink"></div>
				<div class="header-menu-searchmobile">
					<button class="header-menu-searchmobile-link" data-action="show-sitesearch" title="{{translate 'Search'}}">
						<i class="header-menu-searchmobile-icon"></i>
					</button>
				</div>

				<div class="header-menu-cart">
					<div class="header-menu-cart-dropdown" >
						<div data-view="Header.MiniCart"></div>
					</div>
				</div>
			</div>
		</div>

		<div id="banner-header-bottom" class="content-banner banner-header-bottom" data-cms-area="header_banner_bottom" data-cms-area-filters="global"></div>
	</nav>
</div>

<div class="header-sidebar-overlay" data-action="header-sidebar-hide"></div>
<div class="header-secondary-wrapper" data-view="Header.Menu" data-phone-template="header_sidebar" data-tablet-template="header_sidebar">
</div>

<div class="header-site-search" data-view="SiteSearch" data-type="SiteSearch"></div> -->