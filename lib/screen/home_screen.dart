import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                /// 배경 색깔
                backgroundColor: Colors.red,
                disabledBackgroundColor: Colors.grey,

                /// 배경 위의 색깔
                foregroundColor: Colors.white,
                disabledForegroundColor: Colors.red,
                shadowColor: Colors.green,
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 12.0,
                ),
                // minimumSize: Size(200.0, 150.0),
                // maximumSize: Size(100, 150),
                // fixedSize: Size(100, 150),
              ),
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                /// Widget State
                ///
                /// hovered - 호버링 상태 (마우스 커서를 올려놓은 상태)
                /// focused - 포커스 됐을때 (텍스트 필드)
                /// pressed - 눌렀을때
                /// dragged - 드래그 됐을때
                /// selected - 선택 됐을때 (체크박스, 라디오 버튼)
                /// scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을때
                /// disabled - 비활성화 됐을때
                /// error - 에러 상태일때
                backgroundColor: WidgetStateProperty.all(
                  Colors.red,
                ),
                minimumSize: WidgetStateProperty.all(
                  Size(
                    200,
                    150,
                  ),
                ),
              ),
              child: Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith(
                  (Set<WidgetState> states) {
                    if (states.contains(
                      WidgetState.pressed,
                    )) {
                      return Colors.red;
                    }
                    return Colors.black;
                  },
                ),
                foregroundColor: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.black;
                    }
                    return Colors.white;
                  },
                ),
                minimumSize: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Size(200, 150);
                    }
                    return Size(300, 200);
                  },
                ),
              ),
              child: Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    32.0,
                  ),
                ),
              ),
              child: Text(
                'Outlined Button Shape',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
