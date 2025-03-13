String? passwordValid(String? value) {
  if (value == null || value.isEmpty) {
    return "This field is can't be empty";
  } else if (value.length < 8) {
    return "Password must be at least 8 characters";
  } else if (value.length > 20) {
    return "Password must be at most 20 characters";
  } else if (!value.contains(RegExp(r'[0-9]'))) {
    return "Password must contain at least one number";
  } else if (!value.contains(RegExp(r'[a-z]'))) {
    return "Password must contain at least one lowercase letter";
  } else if (!value.contains(RegExp(r'[A-Z]'))) {
    return "Password must contain at least one uppercase letter";
  } else {
    return null;
  }
}

String? emailValid(String? value) {
  if (value == null || value.isEmpty) {
    return "This field is can't be empty";
  } else if (!value.contains('@')) {
    return "Email must contain @";
  } else if (!value.contains('.com')) {
    return "Email must contain .com";
  } else {
    return null;
  }
}

String? usernameValid(String? value) {
  if (value == null || value.isEmpty) {
    return "This field is can't be empty";
  } else if (value.length < 3) {
    return "Username must be at least 3 characters";
  } else if (value.length > 20) {
    return "Username must be at most 20 characters";
  } else {
    return null;
  }
}

String? otpValid(String? value) {
  if (value == null || value.isEmpty) {
    return "This field is can't be empty";
  } else if (value.contains(RegExp(r'[a-zA-Z]'))) {
    return "OTP must contain only numbers";
  } else if (value.length > 4) {
    return "OTP must be at most 4 numbers";
  } else {
    return null;
  }
}
