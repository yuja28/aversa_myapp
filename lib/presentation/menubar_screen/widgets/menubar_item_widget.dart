import 'package:flutter/material.dart';
import 'package:myapp/core/app_export.dart';

// ignore: must_be_immutable
class MenubarItemWidget extends StatelessWidget {
  const MenubarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getVerticalSize(
            32,
          ),
          width: getHorizontalSize(
            28,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    32,
                  ),
                  width: getHorizontalSize(
                    28,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray300,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgInfo,
                height: getVerticalSize(
                  18,
                ),
                width: getHorizontalSize(
                  16,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 11,
            top: 4,
            bottom: 10,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.titleSmall!.copyWith(
              letterSpacing: getHorizontalSize(
                0.28,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
