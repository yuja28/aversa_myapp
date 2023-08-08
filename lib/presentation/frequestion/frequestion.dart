import 'package:flutter/material.dart';

class FrequentQuestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('자주 묻는 질문'),
      ),
      body: ListView(
        children: <Widget>[
          FaqCard(
            question: '점심시간은 언제인가요?',
            answer:
            '점심시간은 11:30분부터 1시까지입니다.',
          ),
          FaqCard(
            question: '아메리카노의 가격은 얼마입니까?',
            answer:
            '아메리카노의 가격은 3500원입니다.',
          ),
          FaqCard(
            question: '경기 스타트업 캠퍼스는 어디에 있나요?',
            answer:
            ' 경기 스타트업 캠퍼스는 판교에 있습니다.',
          ),
        ],
      ),
    );
  }
}

class FaqCard extends StatelessWidget {
  final String question;
  final String answer;

  FaqCard({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(answer),
          ],
        ),
      ),
    );
  }
}