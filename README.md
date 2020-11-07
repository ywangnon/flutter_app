# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 프로젝트 구조 이해

- 프로젝트를 구성하는 폴더
    - .idea : 개발 도구에 필요한 설정
    - .android : 안드로이드 네이티브 코드를 작성하는 부분
    - build : 빌드시 생성되는 파일
    - ios : iOS 네이티브 코드를 작성하는 부분
    - lib : 다트 코드를 작성하는 부분
    - test : 테스트 코드를 작성하는 부분
- 프로젝트를 구성하는 파일
    - .gitignore : Git 설정 파일. 버전 관리시 무시할 파일 규칙 작성
    - .metadata : 프로젝트가 관리하는 파일. 임의로 수정하지 않습니다.
    - .packages : 각종 패키지 정보. 임의로 수정하지 않습니다.
    - flutter_app.iml : 개발 도구에 필요한 설정 파일. 임의로 수정하지 않습니다.
    - pubspec.lock : 패키지 매니저가 이요하는 파일. 임의로 수정하지 않습니다.
    - pubspec.yaml : 패키지 매니저가 이용하는 파일
    - README.md : 프로젝트 설명을 작성하는 파일

// 문서는 대부분 건들이지 말자

## 위젯

- Flutter에서는 모든 것이 위젯
    - 보이는 layout, 안보이는 center 등 모든 요소들을 위젯이라 함
    - 위젯이 모여서 또 위젯을 만듦

- 중요위젯
    - stateless: Value 값을 저장, 동적인 위젯
    - stateful: 이전 상호작용의 어떠한 값도 저장하지 않음, 변화하지 않는 정적인 위젯
    - Inherited

### 위젯 트리

- 위젯들은 트리구조로 정리 가능
- 한 위젯 내에 얼마든지 다른 위젯들을 포함 가능
- 위젯은 부모, 자식으로 구분
- 부모 위젯을 widget container라고도 부름

* Scaffold: 빈 페이지를 만들어 주는 중요한 위젯