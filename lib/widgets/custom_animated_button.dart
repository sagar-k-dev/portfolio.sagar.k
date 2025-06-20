import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/res/res.dart';
import 'package:portfolio/utils/utils.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.width,
    this.onPress,
    this.buttonType = ButtonType.continued,
    this.title = '',
    this.color,
    this.textColor,
    this.padding,
    this.borderWidth,
    this.titleWidget,
    this.isDisable = false,
    this.margin,
    this.height,
    this.textAlign,
    this.radius,
    this.defaultPadding = false,
    this.borderColor,
    this.textStyle,
    this.onPressJoin,
    this.shadowColor,
  });

  final String title;
  final double? width;
  final double? height;
  final double? radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Function()? onPress;
  final ButtonType? buttonType;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final double? borderWidth;
  final Widget? titleWidget;
  final bool isDisable;
  final bool defaultPadding;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final Function()? onPressJoin;
  final Color? shadowColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  var value = 0.0;

  @override
  Widget build(BuildContext context) => Opacity(
        opacity: widget.isDisable ? 0.6 : 1,
        child: Listener(
          onPointerDown: (_) {
            if (!widget.isDisable) {
              setState(() {
                value = 4.0;
              });
            }
          },
          onPointerUp: (_) {
            if (!widget.isDisable) {
              setState(() {
                value = 0.0;
              });
            }
          },
          child: GestureDetector(
            onTap: !widget.isDisable ? widget.onPress : null,
            child: Container(
              margin: widget.margin ?? Dimens.edgeInsets0,
              height: widget.height,
              padding: (widget.defaultPadding
                      ? Dimens.edgeInsets16
                      : widget.padding) ??
                  Dimens.edgeInsets0,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: widget.isDisable ? 4 : 4,
                    height: widget.height,
                    child: Stack(
                      children: [
                        Container(
                          width: widget.width ?? Get.width - Dimens.thirtyTwo,
                          height: Dimens.thirtyFive,
                          decoration: BoxDecoration(
                            color: widget.borderColor ??
                                widget.color ??
                                ColorsValue.primaryColor.withValues(alpha: .8),
                            borderRadius: BorderRadius.all(
                              Radius.circular(widget.radius ?? 12),
                            ),
                          ),
                        ),
                        Container(
                          width: widget.width ?? Get.width - Dimens.thirtyTwo,
                          height: Dimens.thirtyFive,
                          decoration: BoxDecoration(
                            color: widget.shadowColor ??
                                Colors.black.withValues(alpha: .4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(widget.radius ?? 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    height: widget.height,
                    width: widget.width ?? Get.width - Dimens.thirtyTwo,
                    constraints:
                        const BoxConstraints(maxHeight: Dimens.thirtyFive),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: widget.borderColor ??
                              widget.color ??
                              (widget.buttonType == ButtonType.cancelled
                                  ? ColorsValue.primaryColor
                                  : Colors.transparent)),
                      color: widget.buttonType == ButtonType.cancelled
                          ? Theme.of(context).scaffoldBackgroundColor
                          : (widget.color ?? ColorsValue.primaryColor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(widget.radius ?? 12),
                      ),
                    ),
                    duration: const Duration(milliseconds: 50),
                    transform: value == 4
                        ? (Matrix4.identity()..translate(0.0, value))
                        : Matrix4.identity(),
                    child: Center(
                      child: widget.titleWidget ??
                          Text(
                            widget.title,
                            style: widget.textStyle ??
                                Styles.white8.copyWith(
                                  color: widget.textColor ??
                                      (widget.buttonType == ButtonType.cancelled
                                          ? Theme.of(context)
                                              .secondaryHeaderColor
                                          : Colors.white),
                                ),
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
