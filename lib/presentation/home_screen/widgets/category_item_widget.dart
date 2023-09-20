import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/routes/navigation_args.dart';

import '../controller/home_controller.dart';
import '../models/category_item_model.dart';

// ignore: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget(this.frame9ItemModelObj);

  CategoryItemModel frame9ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        125.00,
      ),
      width: getHorizontalSize(
        87.00,
      ),
      margin: EdgeInsets.only(
        right: getHorizontalSize(
          20.00,
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  10.00,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  88.00,
                ),
                width: getHorizontalSize(
                  87.00,
                ),
                child: SvgPicture.asset(
                  ImageConstant.imgBackground,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    6.00,
                  ),
                  right: getHorizontalSize(
                    6.00,
                  ),
                ),
                child: Obx(
                  () => CommonImageView(
                    url: frame9ItemModelObj.imageImg.value,
                    height: getVerticalSize(65.00),
                    width: getHorizontalSize(75.00),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.fruitsScreen, arguments: {
                      NavigationArgs.categoryId: frame9ItemModelObj.categoryId,
                      NavigationArgs.categoryName:
                          frame9ItemModelObj.categoryName
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        22.00,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        0.00,
                      ),
                      top: getVerticalSize(
                        11.79,
                      ),
                      right: getHorizontalSize(
                        0.00,
                      ),
                      bottom: getVerticalSize(
                        11.47,
                      ),
                    ),
                    decoration: AppDecoration.txtFillGreen500.copyWith(
                      borderRadius: BorderRadiusStyle.txtCustomBorderBL5,
                    ),
                    child: Obx(
                      () => Text(
                        frame9ItemModelObj.groceriesTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                            AppStyle.txtMontserratSemiBold12WhiteA700.copyWith(
                          fontSize: getFontSize(
                            12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
