import 'package:flutter/material.dart';

// 앱 시작 부분
// 책에는 void main() => runApp(MyApp()); 로 되어있음.
// runApp()함수에 MyApp() 인스턴스를 전달
void main() {
  runApp(MyApp());
}

// 시작 클래스. 머터리얼 디자인 앱 생성
//
// StatelessWidget 클래스는 상태가 없는 위젯을 정의하는데 사용.
// StatelessWidget 클래스는 상태를 가지지 않는 위젯을 구성하는 기본 클래스.
// 상태를 가지지 않는다. == 한 번 그려진 후 다시 그리지 않는 경우.
// 프로퍼티로 변수를 가지지 않음. 상수는 가질 수 있음.
// StatelessWidget 클래스는 build() 메서드를 가지고 있음.
// build() 메서드는 위젯을 생성할 때 호출됨. 화면에 그릴 위젯을 작성해 반환.
// MyApp 클래스는 StatelessWidget 클래스의 서브클래스.
// MaterialApp 클래스의 인스턴스를 작성해 반환.
class MyApp extends StatelessWidget { // StatelessWidget 상송
  // 이 위젯은 응용 프로그램의 루트입니다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // MaterialApp 클래스 인스턴스 작성해서 반환
      title: 'Flutter Demo', // 제목
      theme: ThemeData(
        // 여기가 어플리케이션의 테마입니다.
        //
        // "flutter run"으로 응용 프로그램을 실행 해보십시오. 애플리케이션에
        // 파란색 툴바가있는 것을 볼 수 있습니다. 그런 다음 앱을 종료하지 않고
        // 아래에서 primarySwatch를 Colors.green으로 변경 한 다음
        // "hot reload"를 호출합니다. ("flutter run"을 실행 한 콘솔에서 "r"을
        // 누르거나, 변경 내용을 Flutter IDE의 "hot reload"에 저장).
        // 카운터는 다시 0으로 재설정되지 않았습니다.;
        //  응용 프로그램이 다시 시작되지 않습니다.
        primarySwatch: Colors.blue,
        // 이렇게하면 시각적 밀도가 앱을 실행하는 플랫폼에 맞게 조정됩니다.
        // 데스크톱 플랫폼의 경우 컨트롤이 모바일 플랫폼보다 작고 가깝습니다.
        // (더 밀집 됨).
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // 표시할 화면의 인스턴스
      // home에 작성하는 위젯이 실제 이 앱이 표시하는 위젯
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/**
 * 이름 있는 인수는 인수 앞에 인수명 작성
 * MyHomePage(title: 'hello')
 * 이름 없는 인수는 인수명 작성하지 않음
 * Text('hello')
 */

// 시작 클래스가 실제로 표시하는 클래스. 카운터 앱 화면
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // 이 위젯은 응용프로그램의 홈 페이지 입니다. 이 위젯은 stateful이며, 이 위젯이
  // 어떻게 보이는지에 영향을 미치는 필드를 포함하는 State 객체를 가지고 있다는 것을
  // 의미합니다.

  // 이 클래스는 state를 위한 환경 설정입니다. 부모(이 경우는 App widget)로부터 값을
  // (이 경우는 title)부여받고, State의 build 메소드에 의해 사용됩니다. Widget의 하위
  // 클래스의 필드는 항상 "final"로 표시됩니다.

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// 위 MyHomePage 클래스의 상태를 나타내는 State 클래스
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // 화면에 표시할 상탯값인 카운터 숫자

  // counter 변수를 1 증가시키고 화면을 다시 그리는 메서드
  void _incrementCounter() {
    setState(() { // 화면을 다시 그리도록 하는 함수. StatefulWidget만 가능
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // 화면에 UI를 그리는 메서드. 그려질 위젯을 반환
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(  // 머터리얼 디자인 기본 뼈대 위젯
      appBar: AppBar( // 상단 앱바
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center( // 표시할 내용
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',  // _counter 변수를 표시
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // 클릭 시 _incrementCounter() 메서드 실행
        tooltip: 'Increment',
        child: Icon(Icons.add), // 상단 앱바
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
