$(document).ready(function () {
            $('#form').ffform({ animation: 'flip', submitButton: '#submit', validationIndicator: '#validation', errorIndicator: '#error',
			successIndicator: '#success', 'fields': [{ 'id': 'name', required: true, requiredMsg: 'Name is required', type: 'alpha',
			validate: true, msg: 'Invalid Name' }, { 'id': 'email', required: true, requiredMsg: 'E-Mail is required', type: 'email', validate: 
			true, msg: 'Invalid E-Mail Address' }, { 'id': 'phone', required: true, type: 'alpha', validate: true, msg: 'Invalid Phone #' }, 
			] });
        });