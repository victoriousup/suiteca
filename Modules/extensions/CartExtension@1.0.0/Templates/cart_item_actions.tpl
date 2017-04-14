{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

{{#if isAdvanced}}
	<div class="cart-item-actions-item-list-actionable-edit-button">
		<a href="{{item._editUrl}}" title="" class="cart-item-actions-item-list-actionable-edit-button-edit btn btn-default tool-tip" data-original-title="Update" data-toggle="show-in-modal">
			<i class="fa fa-refresh"></i>
		</a>
		<a type="button" title="" class="cart-item-actions-item-list-actionable-edit-content-remove btn btn-default tool-tip" data-original-title="Remove" data-action="remove-item" data-internalid="{{lineId}}">
			<i class="fa fa-times-circle"></i>
		</a>
	</div>
{{else}}
	<a type="button" title="" class="cart-item-actions-item-list-actionable-edit-content-remove btn btn-default tool-tip" data-original-title="Remove" data-action="remove-item" data-internalid="{{lineId}}">
		<i class="fa fa-times-circle"></i>
	</a>
{{/if}}
