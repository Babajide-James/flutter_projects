mixin ValidatorMixin {
  String? nameMixin(String? value) {
    if (!value!.contains(" ")) {
      return 'Please input your full name';
    }
    return null;
  }

  String? passwordMixin(String? value) {
    if (value!.length < 4) {
      return 'Character must be more than 4 digits';
    }
    return null;
  }
}
