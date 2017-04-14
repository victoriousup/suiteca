{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<section class="login-register" >

	<header class="login-register-header">
		{{#if showRegister}}
		<h2 class="login-register-title main-heading text-center"> {{translate 'LOGIN OR CREATE NEW ACCOUNT'}}</h2>
		<!-- <h1 class="login-register-title"> {{translate 'Log in | Register'}}</h1> -->
		{{else}}
		<h2 class="login-register-title main-heading text-center"> {{translate 'LOGIN'}}</h2>
		<!-- <h1 class="login-register-title main-heading text-center"> {{translate 'LOGIN'}}</h1> -->
		{{/if}}
	</header>

	<div {{#if showRegister}} class="login-register-body login-area" {{else}} class="login-register-body-colored login-area" {{/if}}>

		{{#if showLogin}}
			<div class="login-register-wrapper-column-login">
				<div class="login-register-wrapper-login panel panel-smart" data-view="Login"></div>
			</div>
		{{/if}}

		{{#if showRegisterOrGuest}}
			<div class="login-register-wrapper-column-register">
				<div class="login-register-wrapper-register">
					<!-- <h2 class="login-register-title-register">{{translate 'Create New Account'}}</h2> -->

					{{#if showCheckoutAsGuest}}
						<div class="login-register-wrapper-guest" data-view="CheckoutAsGuest"></div>
					{{/if}}

					{{#if showRegister}}
						<div class="panel panel-smart {{#if showCheckoutAsGuest}}collapse{{/if}} " data-view="Register" id="register-view"></div>
					{{/if}}
				</div>
			</div>
		{{/if}}

	</div>
</section>