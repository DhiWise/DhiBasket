import 'package:flutter/widgets.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/presentation/home_screen/controller/home_controller.dart';
import 'package:grocery_app/presentation/home_screen/models/category_item_model.dart';
import 'package:grocery_app/presentation/home_screen/widgets/category_item_widget.dart';

class TopCategories extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(
                left: getHorizontalSize(16.00),
                top: getVerticalSize(24.00),
                right: getHorizontalSize(16.00)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("lbl_top_categories".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold20
                          .copyWith(fontSize: getFontSize(20))),
                  GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.exploreScreen),
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: getVerticalSize(2.00),
                              bottom: getVerticalSize(2.00)),
                          child: Text("lbl_explore_all".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold22
                                  .copyWith(fontSize: getFontSize(16)))))
                ])),
        Container(
            height: getVerticalSize(145.00),
            width: getHorizontalSize(408.00),
            child: Obx(() => ListView.builder(
                padding: EdgeInsets.only(
                    left: getHorizontalSize(16.00),
                    top: getVerticalSize(20.00),
                    right: getHorizontalSize(4.00)),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: controller.homeModelObj.value.frame9ItemList.length,
                itemBuilder: (context, index) {
                  CategoryItemModel model =
                      controller.homeModelObj.value.frame9ItemList[index];
                  print(' this job hard $model');
                  return CategoryItemWidget(model);
                }))),
      ],
    );
  }
}
