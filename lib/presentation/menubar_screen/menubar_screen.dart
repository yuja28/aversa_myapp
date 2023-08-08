import '../menubar_screen/widgets/menubar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/app_export.dart';

class MenubarScreen extends StatelessWidget {
  const MenubarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: Container(
          width: getHorizontalSize(
            414,
          ),
          padding: getPadding(
            top: 59,
            bottom: 59,
          ),
          child: Container(
            margin: getMargin(
              bottom: 5,
            ),
            padding: getPadding(
              left: 12,
              top: 30,
              right: 12,
              bottom: 30,
            ),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgMenu,
                  height: getVerticalSize(
                    16,
                  ),
                  width: getHorizontalSize(
                    31,
                  ),
                  margin: getMargin(
                    left: 13,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(
                      left: 1,
                      top: 91,
                      bottom: 91,
                    ),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: getVerticalSize(
                            40,
                          ),
                        );
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return MenubarItemWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
