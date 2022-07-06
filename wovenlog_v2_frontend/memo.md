# 設計方針
- Riverpodの導入
  - 従来：WidgetツリーでLayoutを構成
    - LayoutとState（Presentation Logic）が混在
  - 導入後
    - Layout: class
    - 

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

# Freezed
```
class Spot {
  final String? id;
  final String? name;
  final String? address;
  final double? latitude;
  final double? longitude;
  final String? url;
  final String? image;
  final DateTime? createdDate;
  final String? categoryId;
  final String? description;

  Spot({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.url,
    this.image,
    this.createdDate,
    this.categoryId,
    this.description,
  });
```