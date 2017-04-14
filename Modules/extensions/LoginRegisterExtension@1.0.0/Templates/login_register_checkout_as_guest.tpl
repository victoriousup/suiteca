{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div class="login-register-checkout-as-guest-header panel panel-smart collapse {{#unless hideRegister}}in{{/unless}}" id="guest-show-view">
	<div class="panel-heading">
		<h3 class="panel-title">
			{{ translate 'Checkout as a Guest' }}
		</h3>
	</div>
	<div class="panel-body">
		<p class="login-register-checkout-as-guest-description">
			{{translate 'Checkout as a guest and you will have an opportunity to create an account when you are finished.'}}
		</p>
		{{#if expandGuestUserEnabled}}
			<button href="#" class="login-register-checkout-as-guest-button-show btn btn-warning" data-toggle="collapse" data-target="#guest-show-view,#guest-view">
				{{translate 'Checkout as a Guest'}}
			</button>
		{{else}}
			<form class="login-register-checkout-as-guest-form form-horizontal" method="POST" novalidate>
				<div class="login-register-checkout-as-guest-control-group form-group">
					<button type="submit" class="login-register-checkout-as-guest-submit btn btn-warning">
						{{translate 'Checkout as a Guest'}}
					</button>
				</div>
			</form>
		{{/if}}
	</div>
</div>
<div class="login-register-checkout-as-guest-body panel panel-smart collapse {{#if hideRegister}}in{{/if}}" id="guest-view">
	<div class="panel-heading">
		<h3 class="panel-title"> {{ translate 'Checkout as a Guest' }} </h3>
	</div>
	<div class="panel-body">
		<p class="login-register-checkout-as-guest-description">
			{{#if hideRegister}}
				{{translate 'Checkout as a Guest'}}
			{{else}}
				{{translate 'Checkout as a guest and you will have an opportunity to create an account when you are finished.'}}
			{{/if}}
		</p>
		<form class="login-register-checkout-as-guest-form form-horizontal" method="POST" novalidate>

			{{#if showGuestFirstandLastname}}
				<div class="login-register-checkout-as-guest-control-group form-group" data-validation="control-group">
					<label class="login-register-checkout-as-guest-control-label control-label" for="register-firstname">
						{{translate 'First Name <sup class="login-register-checkout-as-guest-required">*</sup>'}}
					</label>
					<div class="login-register-checkout-as-guest-controls col-sm-8" data-validation="control">
						<input type="text" name="firstname" id="guest-firstname" class="login-register-checkout-as-guest-input form-control">
					</div>
				</div>

				<div class="login-register-checkout-as-guest-control-group form-group" data-validation="control-group">
					<label class="login-register-checkout-as-guest-control-label control-label control-label" for="guest-lastname">
						{{translate 'Last Name <sup class="login-register-checkout-as-guest-required">*</sup>'}}
					</label>
					<div class="login-register-checkout-as-guest-controls col-sm-8" data-validation="control">
						<input type="text" name="lastname" id="guest-lastname" class="login-register-checkout-as-guest-input form-control">
					</div>
				</div>
			{{/if}}
			
			{{#if isRedirect}}
				<div class="login-register-checkout-as-guest-form-controls-group form-group" data-validation="control-group">
					<div class="login-register-checkout-as-guest-register-form-controls " data-validation="control">
						<input value="true" type="hidden" name="redirect" id="redirect" >
					</div>
				</div>
			{{/if}}

			{{#if showGuestEmail}}
				<div class="login-register-checkout-as-guest-control-group form-group" data-validation="control-group">
					<label class="login-register-checkout-as-guest-control-label col-sm-3 control-label" for="register-email">
						{{translate 'Email <sup class="login-register-checkout-as-guest-required">*</sup>'}}
					</label>
					<div class="login-register-checkout-as-guest-controls col-sm-8" data-validation="control">
						<input type="email" name="email" id="guest-email" class="login-register-checkout-as-guest-input form-control" placeholder="{{translate 'your@email.com'}}" value="">
						<p class="login-register-checkout-as-guest-help-block">
							<sup>{{translate 'We need your email address to contact you about your order.'}}</sup>
						</p>
					</div>
				</div>
			{{/if}}

			<div class="login-register-checkout-as-guest-form-messages" data-type="alert-placeholder"></div>

			<div class="login-register-checkout-as-guest-control-group">
				<button type="submit" class="login-register-checkout-as-guest-submit btn btn-warning">
					{{translate 'Proceed to Checkout'}}
				</button>
			</div>
		</form>
	</div>
</div>

{{#unless hideRegister}}
	<div class="login-register-checkout-as-guest-register-header panel panel-smart collapse in" id="register-show-view">
		<div class="panel-heading">
			<h3 class="panel-title">
				{{ translate 'Create Account'}}
			</h3>
		</div>
		<div class="panel-body">
			<p class="login-register-checkout-as-guest-description">
				{{translate 'Create an account and take advantage of faster checkouts and other great benefits.'}}
			</p>
			<button class="login-register-checkout-as-guest-button-show btn btn-warning" data-toggle="collapse" data-target="#register-show-view,#register-view">
				{{translate 'Create Account'}}
			</button>
		</div>
	</div>
{{/unless}}