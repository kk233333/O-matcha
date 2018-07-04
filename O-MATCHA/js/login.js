$(document).ready(function () {
            $('#form').ffform({ animation: 'flip', submitButton: '#submit', validationIndicator: '#validation', errorIndicator: '#error',
			successIndicator: '#success', 'fields': [{ 'id': 'name', required: true, requiredMsg: 'Name is required', type: 'alpha',
			validate: true, msg: 'Invalid Name' }, { 'id': 'email', required: true,  type: 'email', validate: 
			true }, { 'id': 'phone', required: true, type: 'custom', validate: true, msg: 'Invalid Phone #' }, 
			] });
        });