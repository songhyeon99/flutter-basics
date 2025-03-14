import 'package:flutter/material.dart';

/**
* runApp 함수는 앱의 시작점
* runApp 함수는 위젯을 인자로 받아 화면에 표시
* MyApp에는 앱 메인페이지를 입력
*/
void main() {
  runApp(const MyApp());
}

/**
* 세팅하기 위한 코드
* 16 - 20은 없는 척 해도 무방
* 실제 코딩은 return Container(); 부분에 작성
* Container에서 부터 메인페이지가 시작됨
*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello Flutter')),
        body: Text('Hello World'),
        bottomNavigationBar: BottomAppBar(
          child: Center( // BottomAppBar에 위젯을 중앙에 배치
            child: Container( //BottomAppBar에 height를 주기 위해 Container로 감싸줌
              width: 300,
              height: 100,
              // color: Colors.blue, // BoxDecoration이랑 같이 사용하면 오류 발생
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration( // border, radius, shadow 등을 설정
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, // 위젯 정렬
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

/**
 * Flutter는 위젯을 사용하여 화면을 구성 
 * ==> 모든 것이 위젯 (위젯을 조립하여 화면을 구성, 위젯은 부품과 같음, text, button, image 등)
 * ==> 대문자로 시작하고 ()가 붙음
 * 위젯은 화면을 구성하는 요소들을 의미
 * 위젯은 StatelessWidget과 StatefulWidget으로 나뉨
 * StatelessWidget은 한번 그려지면 변경되지 않는 위젯
 * StatefulWidget은 동적인 위젯으로 변경 가능
 * StatelessWidget은 build 메서드를 오버라이딩하여 구현
 * build 메서드는 위젯을 반환
 * 
 * ==========================================
 * 꼭 알아야 하는 위젯 7가지
 * 1. Container(), SizedBox() : 다양한 속성을 가지는 박스 모델
 * ==> SizedBox()는 고정된 크기의 박스 모델로 width, height, child만 필요한 경우 사용. 그 외에는 Container() 사용
 * 2. Column : 세로로 위젯을 배열(여러 위젯 세로로 배열)
 * 3. Row : 가로로 위젯을 배열(여러 위젯 가로로 배열)
 * 4. Scaffold : 앱 화면의 기본 구성 요소
 * 5. Image.asset('경로') : 이미지를 표시
 * ==> 프로젝트 폴더 안에 이미지가 있어야 함
 * ==> pubspec.yaml 파일에 이미지 경로를 추가해야 함
 * ==> pubspec.yaml 파일은 앱 만들때 필요한 모든 설정을 하는 파일
 * 6. Icon(Icons.) : 아이콘을 표시
 * ==> Icons.아이콘명.스타일로 사용
 * 7. Text() : 텍스트를 표시
 * 8. Center() : 자식 위젯을 중앙에 배치
 * 9. Padding() : 위젯에 여백을 추가
 * 10. Align() : 자식 위젯을 정렬
 * 11. ListView() : 리스트뷰를 표시
 * 12. GridView() : 그리드뷰를 표시
 * 13. Card() : 카드를 표시
 * 14. ListTile() : 리스트 타일을 표시
 * 15. Stack() : 위젯을 겹쳐서 표시
 * 16. Positioned() : Stack 위젯 안에서 위치를 지정
 * 17. SingleChildScrollView() : 스크롤이 가능한 위젯
 * 18. AlertDialog() : 경고창을 표시
 * 19. BottomNavigationBar() : 하단 네비게이션 바를 표시
 * 20. AppBar() : 앱 바를 표시
 * 21. FloatingActionButton() : 플로팅 액션 버튼을 표시
 * 22. TextField() : 텍스트 필드를 표시
 * 23. RaisedButton() : 누를 수 있는 버튼을 표시
 * 24. FlatButton() : 평평한 버튼을 표시
 * 25. IconButton() : 아이콘 버튼을 표시
 * 26. Checkbox() : 체크박스를 표시
 * 27. Radio() : 라디오 버튼을 표시
 * 28. Switch() : 스위치 버튼을 표시
 * 29. Slider() : 슬라이더를 표시
 * 30. CircularProgressIndicator() : 원형 프로그레스 바를 표시
 * 31. LinearProgressIndicator() : 직선형 프로그레스 바를 표시
 * 32. RefreshIndicator() : 새로고침 기능을 추가
 * 33. ExpansionTile() : 확장 타일을 표시
 * 34. Drawer() : 드로어를 표시
 * 35. TabBar() : 탭 바를 표시
 * 36. TabBarView() : 탭 바와 연동된 뷰를 표시
 * 37. TextStyle() : 텍스트 스타일을 지정
 * 38. BoxDecoration() : 박스 모델의 스타일을 지정
 * 39. Color(oxff색상코드): 색상을 지정
 * ==> Color.fromRGBO(255, 0, 0, 0.5) : 색상을 지정
 * ==========================================
 * 40. TextButton() : 텍스트 버튼을 표시
 * 41. OutlinedButton() : 테두리 버튼을 표시
 * 42. ElevatedButton() : 높은 버튼을 표시
 * 43. DropdownButton() : 드롭다운 버튼을 표시
 * 44. PopupMenuButton() : 팝업 메뉴 버튼을 표시
 * 45. IconButton() : 아이콘 버튼을 표시
 * 
 * -> 버튼 안에는 child, onPressed 속성이 필요
 * -> child 속성에는 텍스트나 아이콘을 넣음
 * -> onPressed 속성에는 버튼을 눌렀을 때 실행할 함수를 넣음
 * 예시)
 * return ElevatedButton(
 *  child: Text('ElevatedButton'),
 *  onPressed: () {
 *  style: ButtonStyle(
 *    backgroundColor: MaterialStateProperty.all(Colors.red),
 *    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
 *    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
 *  },
 * ==========================================
 * 
 * ==========================================
 * MaterialApp 위젯 : 구글이 제공하는 앱의 기본 구성 요소를 사용할 수 있게 해주는 위젯
 * CupertinoApp 위젯 : iOS 디자인을 사용할 수 있게 해주는 위젯
 * Scaffold 위젯 : 앱 화면의 기본 구성 요소를 설정
 * ==> 앱을 상, 중, 하 구성
 * ==> 상단 : AppBar 위젯
 *  --> 넣을 수 있는 속성:
 *   - title : 앱 바에 표시할 제목
 *   - actions : 앱 바에 표시할 액션 버튼
 *   - leading : 앱 바 왼쪽에 표시할 위젯
 *   - backgroundColor : 앱 바의 배경색
 *   - elevation : 그림자 효과
 *   - centerTitle : 제목을 중앙에 정렬
 *   - titleSpacing : 제목과 액션 버튼 사이의 간격
 * ==> 중단 : body 속성에 위젯을 설정
 * ==> 하단 : bottomNavigationBar 속성에 위젯을 설정
 * 예시)
 * return MaterialApp(
 *  home: Scaffold(
 *   appBar: AppBar(title: Text('Hello')),
 *   body: Center(child: Text('Hello')),
 *   bottomNavigationBar: BottomNavigationBar(items: [
 *    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
 *    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
 *  ]),
 * mainAxisAlignmnet : Column, Row 위젯의 자식 위젯을 정렬
 * ==> Column 위젯의 경우 세로 정렬
 * ==> Row 위젯의 경우 가로 정렬
 * ==> MainAxisAlignment.start : 시작 부분에 정렬
 * ==> MainAxisAlignment.center : 중앙에 정렬
 * ==> MainAxisAlignment.end : 끝 부분에 정렬
 * ==> MainAxisAlignment.spaceBetween : 자식 위젯 사이에 동일한 간격을 둠
 * ==> MainAxisAlignment.spaceAround : 자식 위젯 주위에 동일한 간격을 둠
 * ==> MainAxisAlignment.spaceEvenly : 자식 위젯 주위에 동일한 간격을 둠
 * crossAxisAlignment : Column, Row 위젯의 자식 위젯을 정렬
 * ==> CrossAxisAlignment.start : 시작 부분에 정렬
 * ==> CrossAxisAlignment.center : 중앙에 정렬
 * ==> CrossAxisAlignment.end : 끝 부분에 정렬
 * ==> CrossAxisAlignment.stretch : 꽉 채움
 * ==> CrossAxisAlignment.baseline : 기준선에 정렬
 * ==========================================
 * 
 * ==========================================
 * Flexible(): 자식 위젯을 확장, 박스 폭을 %로 주고 싶을때 사용
 * ==> flex 속성을 사용하여 확장 비율을 지정
 * ==> flex 속성을 사용하지 않으면 자식 위젯의 크기에 맞게 확장
 * ==> Expanded()와 비슷하지만 다른 점은 Expanded()는 자식 위젯이 확장되는 축을 지정
 * ==> child 속성에 위젯을 넣음
 * ==> flex 속성에 확장 비율을 지정(배수로 적어주면 됨)
 * ==> fit 속성에 확장 방향을 지정
 * ex) return Row(
 * children: [
 *    Flexible(child: Container(color: Colors.red, height: 100), flex: 1),
 *    Flexible(child: Container(color: Colors.blue, height: 100), flex: 2),
 *    Flexible(child: Container(color: Colors.green, height: 100), flex: 3),
 *  ],
 * );
 * ==========================================
 * 
 * ==========================================
 * Expanded(): 자식 위젯을 확장, 박스 하나 넓게 채우고 싶을때 사용
 * ==> flex 속성을 사용하여 확장 비율을 지정
 * ==> flex 속성을 사용하지 않으면 자식 위젯의 크기에 맞게 확장
 * ==> Flexible()와 비슷하지만 다른 점은 Flexible()는 자식 위젯이 확장되는 축을 지정
 * ==> child 속성에 위젯을 넣음
 * ==> flex 속성에 확장 비율을 지정(배수로 적어주면 됨)
 * ==> fit 속성에 확장 방향을 지정
 * ex) return Row(
 * children: [
 *   Expanded(child: Container(color: Colors.red, height: 100)),
 *   Expanded(child: Container(color: Colors.blue, height: 100)),
 *   Expanded(child: Container(color: Colors.green, height: 100)),
 *  ],
 * );
 */