import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  @override

  void _navigateToEventListPage(BuildContext context, String eventName) {
    if (eventName == '진행중인 이벤트 1') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Event1ListPage()));
    } else if (eventName == '진행중인 이벤트 2') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Event2ListPage()));
    } else if (eventName == '종료된 이벤트 1') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CompletedEvent1ListPage()));
    } else if (eventName == '종료된 이벤트 2') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CompletedEvent2ListPage()));
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('이벤트 페이지')),
      body: ListView(
        children: [
          _buildEventBanner('진행중인 이벤트 1', context),
          _buildEventBanner('진행중인 이벤트 2', context),
          _buildEventBanner('종료된 이벤트 1', context),
          _buildEventBanner('종료된 이벤트 2', context),
        ],
      ),
    );
  }

  Widget _buildEventBanner(String eventName, BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToEventListPage(context, eventName);
      },
      child: Container(
        height: 50,
        color: Colors.green,
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          eventName,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
// 이벤트1 목록 페이지 예시
class Event1ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
          title: Text('진행중인 이벤트 1')),
      body: Center(
        child: Text('이벤트 1 목록 페이지'),
      ),
    );
  }
}

// 이벤트2 목록 페이지 예시
class Event2ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
          title: Text('진행중인 이벤트 2')),
      body: Center(
        child: Text('이벤트 2 목록 페이지'),
      ),
    );
  }
}

// 종료된 이벤트1 목록 페이지 예시
class CompletedEvent1ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
          title: Text('종료된 이벤트 1')),
      body: Center(
        child: Text('종료된 이벤트 1 목록 페이지'),
      ),
    );
  }
}

// 종료된 이벤트2 목록 페이지 예시
class CompletedEvent2ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
          title: Text('종료된 이벤트 2')),
      body: Center(
        child: Text('종료된 이벤트 2 목록 페이지'),
      ),
    );
  }
}