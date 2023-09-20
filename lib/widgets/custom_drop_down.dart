import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.onChanged,
      this.validator});

  final DropDownShape? shape;
  final DropDownPadding? padding;
  final DropDownVariant? variant;
  final DropDownFontStyle? fontStyle;
  final Alignment? alignment;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final FocusNode? focusNode;
  final Widget? icon;
  final String? hintText;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final List<SelectionPopupModel>? items;
  final Function(SelectionPopupModel)? onChanged;
  final FormFieldValidator<SelectionPopupModel>? validator;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
        focusNode: focusNode,
        icon: icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: items?.map((SelectionPopupModel item) {
          return DropdownMenuItem<SelectionPopupModel>(
            value: item,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value!);
        },
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.MontserratRegular18:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray604,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.FillGray102:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case DropDownVariant.FillGray101:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case DropDownVariant.FillGray101:
        return ColorConstant.gray101;
      default:
        return ColorConstant.gray102;
    }
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.FillGray101:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case DropDownPadding.PaddingT18:
        return getPadding(
          left: 11,
          top: 18,
          right: 11,
          bottom: 11,
        );
      case DropDownPadding.PaddingTB21:
        return getPadding(
          left: 19,
          top: 19,
          right: 19,
          bottom: 21,
        );
      default:
        return getPadding(
          left: 16,
          top: 24,
          right: 16,
          bottom: 16,
        );
    }
  }
}

enum DropDownShape {
  RoundedBorder10,
}

enum DropDownPadding {
  PaddingT24,
  PaddingT18,
  PaddingTB21,
}

enum DropDownVariant {
  FillGray102,
  FillGray101,
}

enum DropDownFontStyle {
  MontserratRegular16,
  MontserratRegular18,
}
