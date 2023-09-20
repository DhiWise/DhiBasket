import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/utils/math_utils.dart';
import 'package:grocery_app/presentation/home_screen/controller/home_controller.dart';
import 'package:grocery_app/presentation/home_screen/models/frame10_item_model.dart';
import 'package:grocery_app/presentation/home_screen/widgets/frame10_item_widget.dart';
import 'package:grocery_app/routes/app_routes.dart';
import 'package:grocery_app/theme/app_style.dart';

class TopProducts extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.only(
                    left: getHorizontalSize(16.00),
                    top: getVerticalSize(21.00),
                    right: getHorizontalSize(16.00)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("lbl_top_products".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold20
                              .copyWith(fontSize: getFontSize(20))),
                      GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.exploreScreen),
                          child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(2.00),
                                bottom: getVerticalSize(2.00),
                              ),
                              child: Text("lbl_explore_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold22
                                      .copyWith(fontSize: getFontSize(16)))))
                    ]))),
        Align(
            alignment: Alignment.center,
            child: Container(
                height: getVerticalSize(211.00),
                width: getHorizontalSize(412.00),
                child: Obx(() => ListView.builder(
                    padding: EdgeInsets.only(
                        left: getHorizontalSize(16.00),
                        top: getVerticalSize(19.00)),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount:
                        controller.homeModelObj.value.frame10ItemList.length,
                    itemBuilder: (context, index) {
                      Frame10ItemModel model =
                          controller.homeModelObj.value.frame10ItemList[index];
                      return Frame10ItemWidget(model);
                    })))),
      ],
    );
  }
}
