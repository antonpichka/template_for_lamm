- https://github.com/antonpichka/library_architecture_mvvm_modify/tree/main/package#architectural-objects
- https://github.com/antonpichka/library_architecture_mvvm_modify/blob/main/package/example/lib/main.dart
- https://github.com/antonpichka/library_architecture_mvvm_modify/labels

---

- After setup. Everything after this message can be deleted. Even the message itself

## Project setup

- [common_template_for_lamm](https://github.com/antonpichka/template_for_lamm#common_template_for_lamm)
- [desktop_template_for_lamm](https://github.com/antonpichka/template_for_lamm#desktop_template_for_lamm)
- [mobile_w_tablet_template_for_lamm](https://github.com/antonpichka/template_for_lamm#mobile_w_tablet_template_for_lamm)

### common_template_for_lamm

- If you need to change the application name from 'common_template_for_lamm' to 'common_${your_name}':
- - 'common_template_for_lamm/pubspec.yaml':
- - - 'name: common_template_for_lamm' to 'name: common_${your_name}'

### desktop_template_for_lamm

- If you need to change the application name from 'desktop_template_for_lamm' to 'desktop_${your_name}':
- - 'desktop_template_for_lamm/pubspec.yaml':
- - - 'name: desktop_template_for_lamm' to 'name: desktop_${your_name}'

- Delete directories:
- - linux 
- - macos
- - windows

- Commands:
- - cd desktop_${your_name}
- - flutter create --org ${example_com.antonpichka} --template=app --platforms=windows,macos,linux .

### mobile_w_tablet_template_for_lamm

- If you need to change the application name from 'mobile_w_tablet_template_for_lamm' to 'mobile_w_tablet_${your_name}':
- - 'mobile_w_tablet_template_for_lamm/pubspec.yaml':
- - - 'name: mobile_w_tablet_template_for_lamm' to 'name: mobile_w_tablet_${your_name}'

- Delete directories:
- - android
- - ios

- Commands:
- - cd mobile_w_tablet_${your_name}
- - flutter create --org ${example_com.antonpichka} --template=app --platforms=android,ios .