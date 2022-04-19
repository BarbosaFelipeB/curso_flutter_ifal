// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

// mixin _$SignUpController on _SignUpControllerBase, Store {
//   Computed<bool>? _$isValidNameComputed;
//
//   @override
//   bool get isValidName =>
//       (_$isValidNameComputed ??= Computed<bool>(() => super.isValidName,
//               name: '_SignUpControllerBase.isValidName'))
//           .value;
//   Computed<bool>? _$isValidEmailComputed;
//
//   @override
//   bool get isValidEmail =>
//       (_$isValidEmailComputed ??= Computed<bool>(() => super.isValidEmail,
//               name: '_SignUpControllerBase.isValidEmail'))
//           .value;
//   Computed<bool>? _$isValidPasswordComputed;
//
//   @override
//   bool get isValidPassword =>
//       (_$isValidPasswordComputed ??= Computed<bool>(() => super.isValidPassword,
//               name: '_SignUpControllerBase.isValidPassword'))
//           .value;
//   Computed<String?>? _$nameErrorMessageComputed;
//
//   @override
//   String? get nameErrorMessage => (_$nameErrorMessageComputed ??=
//           Computed<String?>(() => super.nameErrorMessage,
//               name: '_SignUpControllerBase.nameErrorMessage'))
//       .value;
//   Computed<String?>? _$emailErrorMessageComputed;
//
//   @override
//   String? get emailErrorMessage => (_$emailErrorMessageComputed ??=
//           Computed<String?>(() => super.emailErrorMessage,
//               name: '_SignUpControllerBase.emailErrorMessage'))
//       .value;
//   Computed<String?>? _$passwordErrorMessageComputed;
//
//   @override
//   String? get passwordErrorMessage => (_$passwordErrorMessageComputed ??=
//           Computed<String?>(() => super.passwordErrorMessage,
//               name: '_SignUpControllerBase.passwordErrorMessage'))
//       .value;
//   Computed<bool>? _$isFormValidComputed;
//
//   @override
//   bool get isFormValid =>
//       (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
//               name: '_SignUpControllerBase.isFormValid'))
//           .value;
//
//   final _$nameAtom = Atom(name: '_SignUpControllerBase.name');
//
//   @override
//   String? get name {
//     _$nameAtom.reportRead();
//     return super.name;
//   }
//
//   @override
//   set name(String? value) {
//     _$nameAtom.reportWrite(value, super.name, () {
//       super.name = value;
//     });
//   }
//
//   final _$emailAtom = Atom(name: '_SignUpControllerBase.email');
//
//   @override
//   String? get email {
//     _$emailAtom.reportRead();
//     return super.email;
//   }
//
//   @override
//   set email(String? value) {
//     _$emailAtom.reportWrite(value, super.email, () {
//       super.email = value;
//     });
//   }
//
//   final _$passwordAtom = Atom(name: '_SignUpControllerBase.password');
//
//   @override
//   String? get password {
//     _$passwordAtom.reportRead();
//     return super.password;
//   }
//
//   @override
//   set password(String? value) {
//     _$passwordAtom.reportWrite(value, super.password, () {
//       super.password = value;
//     });
//   }
//
//   final _$isVisibleAtom = Atom(name: '_SignUpControllerBase.isVisible');
//
//   @override
//   bool get isVisible {
//     _$isVisibleAtom.reportRead();
//     return super.isVisible;
//   }
//
//   @override
//   set isVisible(bool value) {
//     _$isVisibleAtom.reportWrite(value, super.isVisible, () {
//       super.isVisible = value;
//     });
//   }
//
//   final _$_SignUpControllerBaseActionController =
//       ActionController(name: '_SignUpControllerBase');
//
//   @override
//   void setName(String name) {
//     final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
//         name: '_SignUpControllerBase.setName');
//     try {
//       return super.setName(name);
//     } finally {
//       _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
//     }
//   }
//
//   @override
//   void setEmail(String email) {
//     final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
//         name: '_SignUpControllerBase.setEmail');
//     try {
//       return super.setEmail(email);
//     } finally {
//       _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
//     }
//   }
//
//   @override
//   void setPassword(String password) {
//     final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
//         name: '_SignUpControllerBase.setPassword');
//     try {
//       return super.setPassword(password);
//     } finally {
//       _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
//     }
//   }
//
//   @override
//   void changeIsVisible(bool isVisible) {
//     final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
//         name: '_SignUpControllerBase.changeIsVisible');
//     try {
//       return super.changeIsVisible(isVisible);
//     } finally {
//       _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
//     }
//   }
//
//   @override
//   String toString() {
//     return '''
// name: ${name},
// email: ${email},
// password: ${password},
// isVisible: ${isVisible},
// isValidName: ${isValidName},
// isValidEmail: ${isValidEmail},
// isValidPassword: ${isValidPassword},
// nameErrorMessage: ${nameErrorMessage},
// emailErrorMessage: ${emailErrorMessage},
// passwordErrorMessage: ${passwordErrorMessage},
// isFormValid: ${isFormValid}
//     ''';
//   }
// }
