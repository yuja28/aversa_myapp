import 'package:flutter/material.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/custom_icon_button.dart';
import 'package:image_picker/image_picker.dart'; // image_picker 패키지 가져오기
import 'package:myapp/presentation/settings_screen/settings_screen.dart';
import 'package:myapp/presentation/notifications/notifications.dart';
import 'package:myapp/presentation/help&support/help&support.dart';
import 'package:myapp/presentation/about/about.dart';

class FaceDetectionScreen extends StatefulWidget {
  const FaceDetectionScreen({Key? key}) : super(key: key);

  @override
  _FaceDetectionScreenState createState() => _FaceDetectionScreenState();
}

class _FaceDetectionScreenState extends State<FaceDetectionScreen> {
  XFile? _image; //이미지를 담을 변수 선언
  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화

  // 이미지를 가져오는 함수
  Future getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile; //가져온 이미지를 _image에 저장
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray300,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          elevation : 0.0,
          actions: <Widget> [],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.grey[850],
                ),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                  );
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.grey[850],
                ),
                title: Text('Notifications'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationPage()),
                  );
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.grey[850],
                ),
                title: Text('Help and Support'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpPage()),
                  );
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(top: 12),
                child: Text(
                  "FACE DETECTION",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Container(
                width: getHorizontalSize(182),
                margin: getMargin(top: 30),
                child: Text(
                  "Please look the camera\nuntill you hear bell",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Container(
                height: getVerticalSize(283),
                width: getHorizontalSize(246),
                margin: getMargin(top: 89),
                decoration: AppDecoration.outline,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img3dfaceright2,
                      height: getVerticalSize(283),
                      width: getHorizontalSize(246),
                      alignment: Alignment.center,
                    )
                  ],
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 69,
                width: 265,
                onTap: () {
                  _showImagePickerDialog(context); // 버튼을 누르면 이미지 선택 다이얼로그를 보여줍니다.
                },
                child: CustomImageView(),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showImagePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('얼굴 인식'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              getImage(ImageSource.camera); // getImage 함수를 호출해서 카메라로 찍은 사진 가져오기
            },
            child: Text('카메라'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              getImage(ImageSource.gallery); // getImage 함수를 호출해서 갤러리에서 사진 가져오기
            },
            child: Text('갤러리'),
          ),
        ],
      ),
    );
  }
}
