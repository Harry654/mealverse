export function numberValidator(number) {
	// if (!number) return "Number can't be empty."
	if (number.length != 11) return "Invalid phone number."
	return ''
	}