import 'package:flutter/material.dart';
import 'package:myapp/presentation/frequestion/frequestion.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('도움말 페이지')),
      body: ListView(
        children: [
          _buildHelpItem(Icons.event, '이벤트', '여러가지 이벤트를 확인하세요', context),
          _buildHelpItem(Icons.question_answer, '자주찾는 질문', '자주 묻는 질문과 답변을 확인하세요.', context),
          _buildHelpItem(Icons.info, '정보', '추가 정보를 얻을 수 있는 링크입니다.', context),
        ],
      ),
    );
  }

  Widget _buildHelpItem(IconData icon, String title, String description, BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(description),
      onTap: () {
        if(title =='자주찾는 질문') {
          Navigator.pushNamed(context, '/frequent_questions');
        }
        else if(title == '정보') {
          Navigator.pushNamed(context, '/more_information');
        }
        else if(title == '이벤트'){
          Navigator.pushNamed(context, '/add_event');
        }
      },
    );
  }
}