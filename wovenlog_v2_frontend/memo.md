
# LoginPage
- LoginPageViewModel
  - _IconImageViewModel
  - _InputFormViewModel
  - _InputFormViewModel
  - _LoginButtonViewModel

```
final loginPageVMProvider = Provider(
  (ref) => LoginPageViewModel(
    iconImage: iconImageVMProvider,
    userNameInputForm: userNameInputFormProvider,
    passwordInputForm: 
    loginButton: 
  );
);

class LoginPageViewModel {

  Column(
    children: [
      _IconImageVM.toWidget(),
      _InputFormVM.toWidget(),
      _InputFormVM.toWidget(),
      _LoginButtonVM.toWidget(),
    ],
  )
}
```

