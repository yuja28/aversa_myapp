import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('개발정보'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: 200,
        padding : EdgeInsets.fromLTRB(20,20,20,20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('대표자 : 김민재', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Text('소속 : 성균관대학교', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Text('TEL: 010-2568-7845\n', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Row(
              children: [
                SizedBox(width:10),
                Expanded(
                    child: Text(
                      '* 카메라를 통해 인식된 정보는 저장되지 \n않습니다.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ],
            )

          ]
        )
      ),
    );
  }
}