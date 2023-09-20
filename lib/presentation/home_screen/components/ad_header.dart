import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/app_export.dart';

class AdHeader extends StatelessWidget {
  const AdHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.center,
            child: Container(
                margin: EdgeInsets.only(
                  left: getHorizontalSize(16.00),
                  top: getVerticalSize(20.00),
                  right: getHorizontalSize(16.00),
                ),
                decoration: BoxDecoration(
                    color: ColorConstant.green500,
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(10.00))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: getHorizontalSize(35.00),
                            top: getVerticalSize(36.00),
                            bottom: getVerticalSize(38.00)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(99.00),
                                  child: Text("msg_everyday_essent".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratBold20
                                          .copyWith(
                                              fontSize: getFontSize(20),
                                              color: ColorConstant.whiteA700))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(8.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Text("lbl_10_off".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratBold20
                                          .copyWith(
                                              fontSize: getFontSize(20),
                                              color: ColorConstant.whiteA700))),
                            ]),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: getHorizontalSize(35.00),
                              top: getVerticalSize(10.00),
                              right: getHorizontalSize(28.00),
                              bottom: getVerticalSize(18.00)),
                          child: Image.asset(ImageConstant.imgImage126X199,
                              height: getVerticalSize(126.00),
                              width: getHorizontalSize(199.00),
                              fit: BoxFit.fill))
                    ]))),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
                left: getHorizontalSize(16.00),
                top: getVerticalSize(24.00),
                right: getHorizontalSize(16.00)),
            child: Container(
              height: getVerticalSize(5.00),
              width: getHorizontalSize(39.00),
              child: SvgPicture.asset(
                ImageConstant.imgSwipe,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
