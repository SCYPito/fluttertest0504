import 'package:flutter/material.dart';
import 'splash_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutTube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // 去除右上方Debug標誌
      home: SplashPage(),
    );
  }
}

/*
系統會說找不到splash_page.dart檔案，所以新增splash_page.dart和login_page.dart



*/







/*
添加Package到Flutter專案中
雖然開頭說要詳細說明，不過安裝使用Package的步驟實在太簡單了，只要三個步驟。

開啟pubspec.yaml檔案，在dependencies處添加你所需的Package。
使用Terminal執行flutter pub get，或是點選工具列會顯示的「Packages get」按鈕來安裝Package。
在Dart Code裡面使用import 'package:....'來進行引用後就可以使用囉。
*/

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


