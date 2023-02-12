# template_for_lamm

How to use it ? Read below)

## common_my_project

### If you need to change the application name from 'common_my_project' to 'common_${your_name}'

Path: common_my_project/pubspec.yaml:
- "name: common_my_project" to "name: common_${your_name}"

## desktop_my_project

### If you need to change the application name from 'desktop_my_project' to 'desktop_${your_name}'

Path: desktop_my_project/pubspec.yaml:
- "name: desktop_my_project" to "name: desktop_${your_name}"

#### Delete directories

- linux, macos, windows

#### Commands

- cd desktop_${your_name}
- flutter create --org ${example_com.jacobodd} --template=app --platforms=windows,macos,linux .

## mobile_or_tablet_my_project

### If you need to change the application name from 'mobile_or_tablet_my_project' to 'mobile_or_tablet_${your_name}'

Path: mobile_or_tablet_my_project/pubspec.yaml:
- "name: mobile_or_tablet_my_project" to "name: mobile_or_tablet_${your_name}"

#### Delete directories

- android, ios

#### Commands

- cd mobile_or_tablet_${your_name}
- flutter create --org ${example_com.jacobodd} --template=app --platforms=android,ios .

## web_my_project

### If you need to change the application name from 'web_my_project' to 'web_${your_name}'

Path: web_my_project/pubspec.yaml:
- "name: web_my_project" to "name: web_${your_name}"

#### Delete directories

- web

#### Commands

- cd web_${your_name}
- flutter create --org ${example_com.jacobodd} --template=app --platforms=web .

