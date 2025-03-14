import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ShopItem(),
      )
    );
  }
}


/** stless + tab 키를 누르면 StatelessWidget이 생성됨
* Custom 위젯 만드는 법
* class로 커스텀 위젯을 만듦 (ShopItem처럼 작명하기)
* class 안에 변수, 함수 등이 있어야 위젯으로 인식
*/
class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  /** 타입 지정 문법은 지워도 됨(Widget, BuildContext 등)
   * build가 있어야 위젯으로 인식
   */
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          child: Text('Flutter'),
        );
  }
}

/**
 * ListView.builder() 사용법
 * ListView.builder()는 동적인 리스트를 만들 때 사용
 * 100개 이상의 항목을 보여줄 때 사용
 * 스크롤바가 있는 긴 목록이 필요할 때 사용
 * ListView()에 Container()를 넣어서 사용
 * 메모리 절약기능도 있음
 * ==> 유저가 현재 보고 있는 곳만 데이터가 보이고 이미 본 곳은 삭제됨
 * controller: ScrollController()를 사용하여 스크롤 위치를 제어할 수 있음
 * ==> 유저가 얼만큼 스크롤했는지 알 수 있음
 */