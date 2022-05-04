import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        //title：用來放標題
        leading: Icon(FontAwesomeIcons.dragon),
       //leading：通常是用來放logo的地方，可以選擇單純的Icon或是IconButton都可以
        actions: <Widget>[
          //action：這個可以拿來放IconButton，它的概念有點像有些購物網站的購物車按鈕
          IconButton(
            //button：可以當作轉換頁面的按鈕就像上圖的>
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar'))
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(


                      child: Text(
                        '這是第二頁',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          '這裡是首頁',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

/*
lib：平常撰寫的dart語言程式碼都會放在這裡，這個資料夾也可以說是Flutter “核心工作資料夾”
ios：這裡面包含了iOS專案相關的配置和檔案，當專案可以上架的時候，需要開啟該檔案內的Runner.xcworkspace檔案進行編譯工作
此專案沒有該資料夾因為沒有選擇ios應用撰寫
android：與ios資料夾一樣，在android專案可以上架的時候，也需要使用此資料夾裡面的檔案
test：這裡存放了我們在專案開發過程中的測試程式碼，要記得良好的測試習慣是保證程式碼質量的必要手段
.dart_tool：記錄了一些Dart工具庫所在的位置和資訊
.idea：Android Studio 是基於idea開發的，.idea 記錄了專案的一些檔案的變更記錄
build：不會使用到的資料夾，裡面存放系統產生的檔案
web：存放網頁的檔案
.gitignore：若你有使用版本控制軟體但有些不重要的檔案或是機密檔案不能傳上去，就在這裡註明忽略他們
.metadata：IDE 用來記錄某個 Flutter 專案屬性的的隱藏檔案
.packages：管理第三方或是IDE package的檔案，會自動產生與更新內容
flutter_app.iml：工程檔案的路徑配置
pubspec.lock：保存目前pubspec.yaml的資訊，確保其他人使用時能夠下載到同樣版本的packages
.pubspec.yaml：唯一會去修改的檔案，例如使用第三方package，或是要引用影片檔等等

***小工具介紹:
Dart analysis:快速找到錯誤
Flutter outline :程式碼用樹狀結構的方式整理清楚，這樣對我們在編輯的時候會方便很多
Flutter inspector:可以直接透過模擬器查看整個畫面的布局，但是模擬器要打開

*/


