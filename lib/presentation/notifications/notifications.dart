import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, String>> _notifications = [
    {
      'title': '공지사항 1',
      'content':
      '이것은 첫 번째 공지사항입니다. \n꼭 확인해주세요. \n가장 중요한 내용입니다.',
    },
    {
      'title': '공지사항 2',
      'content': '이것은 두 번째 공지사항입니다. \n반드시 확인해주세요.',
    },
    {
      'title': '공지사항 3',
      'content':
      '이것은 세 번째 공지사항입니다. \n확인부탁드립니다. \n세 번째 공지사항 내용입니다.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('공지사항'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: _notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_notifications[index]['title'] ?? ''),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationDetailPage(notification: _notifications[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class NotificationDetailPage extends StatelessWidget {
  final Map<String, String> notification;

  NotificationDetailPage({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(notification['title'] ?? ''),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '공지사항 내용:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(notification['content'] ?? ''),
          ],
        ),
      ),
    );
  }
}