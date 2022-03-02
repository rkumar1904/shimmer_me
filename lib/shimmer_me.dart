library shimmer_me;

import 'package:flutter/material.dart';

class CustomShimmerr extends StatefulWidget {
  final bool isRectBox;
  final bool isDarkMode;
  final bool isPurplishMode;
  final bool isDisabledAvatar;
  final bool hasCustomColors;
  final List<Color> colors;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomLines;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Color bgColor;

  const CustomShimmerr({
    Key? key,
    this.isRectBox = false,
    this.isDarkMode = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.hasBottomLines = false,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(16.0),
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.colors = defaultColors,
    this.isDisabledAvatar = false,
    this.bgColor = Colors.transparent,
  }) : super(key: key);
  @override
  _CustomShimmerrState createState() => _CustomShimmerrState();
}

class _CustomShimmerrState extends State<CustomShimmerr>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  // ****************************init*************************
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }
  // ****************************init*************************

  // *****************************dispose************************
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // *****************************dispose************************
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          color: widget.isDarkMode ? const Color(0xFF0B0B0B) : widget.bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  widget.isDisabledAvatar
                      ? Container()
                      : Container(
                          height: width * 0.14,
                          width: width * 0.14,
                          decoration: customBoxDecoration(
                              animation: _animation,
                              isRectBox: widget.isRectBox,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: width * 0.13,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: height * 0.008,
                          width: widget.isDisabledAvatar
                              ? width * 0.4
                              : width * 0.3,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                        Container(
                          height: height * 0.006,
                          width: widget.isDisabledAvatar
                              ? width * 0.3
                              : width * 0.2,
                          decoration: radiusBoxDecoration(
                            animation: _animation,
                            isPurplishMode: widget.isPurplishMode,
                            isDarkMode: widget.isDarkMode,
                            hasCustomColors: widget.hasCustomColors,
                            colors: widget.colors.length == 3
                                ? widget.colors
                                : defaultColors,
                          ),
                        ),
                        Container(
                          height: height * 0.007,
                          width: widget.isDisabledAvatar
                              ? width * 0.5
                              : width * 0.4,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              widget.hasBottomLines
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          height: height * 0.006,
                          width: width * 0.7,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                        Container(
                          height: height * 0.006,
                          width: width * 0.8,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: height * 0.006,
                          width: width * 0.5,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }
}

class ProductShimmerr extends StatefulWidget {
  final bool isRectBox;
  final bool isDarkMode;
  final bool isPurplishMode;
  final bool isDisabledAvatar;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomBox;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool hasCustomColors;
  final List<Color> colors;
  final Color bgColor;
  const ProductShimmerr({
    Key? key,
    this.isRectBox = false,
    this.isDarkMode = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.hasBottomBox = true,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(16.0),
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.colors = defaultColors,
    this.isDisabledAvatar = false,
    this.bgColor = Colors.transparent,
  }) : super(key: key);
  @override
  _ProductShimmerrState createState() => _ProductShimmerrState();
}

class _ProductShimmerrState extends State<ProductShimmerr>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          color: widget.isDarkMode ? const Color(0xFF0B0B0B) : widget.bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              widget.isDisabledAvatar
                  ? Container()
                  : buildButtomBox(_animation,
                      height: 40,
                      width: 40,
                      isPurplishMode: widget.isPurplishMode,
                      isDarkMode: widget.isDarkMode,
                      isRectBox: widget.isRectBox,
                      beginAlign: widget.beginAlign,
                      endAlign: widget.endAlign,
                      hasCustomColors: widget.hasCustomColors,
                      colors: widget.colors.length == 3
                          ? widget.colors
                          : defaultColors),
              widget.hasBottomBox
                  ? Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            buildButtomBox(_animation,
                                height: width / 2,
                                width: width * 0.4,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defaultColors),
                            buildButtomBox(_animation,
                                height: width / 2,
                                width: width * 0.4,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defaultColors),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            buildButtomBox(_animation,
                                height: width / 2,
                                width: width * 0.4,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defaultColors),
                            buildButtomBox(_animation,
                                height: width / 2,
                                width: width * 0.4,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defaultColors),
                          ],
                        ),
                        Container(
                          height: height * 0.006,
                          width: width * 0.8,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: height * 0.006,
                          width: width * 0.5,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defaultColors),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }
}

class OwnShimmerr extends StatefulWidget {
  final bool isDarkMode;
  final bool isPurplishMode;
  final bool hasCustomColors;
  final List<Color> colors;
  final Color bgColor;
  final double height;
  final double width;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomBox;
  final bool isRectBox;

  const OwnShimmerr({
    Key? key,
    this.isDarkMode = false,
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.colors = defaultColors,
    this.bgColor = Colors.transparent,
    required this.height,
    required this.width,
    required this.hasBottomBox,
    required this.isRectBox,
  }) : super(key: key);
  @override
  _OwnShimmerrState createState() => _OwnShimmerrState();
}

class _OwnShimmerrState extends State<OwnShimmerr>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, child) {
        return Container(
          color: widget.isDarkMode ? const Color(0xFF0B0B0B) : widget.bgColor,
          height: widget.height,
          width: widget.width,
          child: buildButtomBox(_animation,
              height: 40,
              width: 40,
              isPurplishMode: widget.isPurplishMode,
              isDarkMode: widget.isDarkMode,
              isRectBox: widget.isRectBox,
              beginAlign: widget.beginAlign,
              endAlign: widget.endAlign,
              hasCustomColors: widget.hasCustomColors,
              colors:
                  widget.colors.length == 3 ? widget.colors : defaultColors),
        );
      },
    );
  }
}

//
//  ***************************ProfilePageShimmer******************************
//

// **************************************CustomBoxDecoration****************************
// [animation]
// [isRectBox]
// [isDarkMode]
// [beginAlign]
// [endAlign]
//
Decoration customBoxDecoration({
  required Animation animation,
  bool isRectBox = false,
  bool isDarkMode = false,
  bool isPurplishMode = false,
  bool hasCustomColors = false,
  List<Color> colors = defaultColors,
  AlignmentGeometry beginAlign = Alignment.topLeft,
  AlignmentGeometry endAlign = Alignment.bottomRight,
}) {
  return BoxDecoration(
      // shape: isRectBox ? BoxShape.rectangle : BoxShape.circle,
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
          begin: beginAlign,
          end: endAlign,
          colors: hasCustomColors
              ? colors.map((color) {
                  return color;
                }).toList()
              : [
                  isPurplishMode
                      ? const Color(0xFF8D71A9)
                      : isDarkMode
                          ? const Color(0xFF1D1D1D)
                          : const Color.fromRGBO(0, 0, 0, 0.1),
                  isPurplishMode
                      ? const Color(0xFF36265A)
                      : isDarkMode
                          ? const Color(0XFF3C4042)
                          : const Color(0x44CCCCCC),
                  isPurplishMode
                      ? const Color(0xFF8D71A9)
                      : isDarkMode
                          ? const Color(0xFF1D1D1D)
                          : const Color.fromRGBO(0, 0, 0, 0.1),
                ],
          stops: [animation.value - 2, animation.value, animation.value + 1]));
}
//
// **************************************CustomBoxDecoration****************************

// ************************************defaultColorsList*************************
const List<Color> defaultColors = [
  Color.fromRGBO(0, 0, 0, 0.1),
  Color(0x44CCCCCC),
  Color.fromRGBO(0, 0, 0, 0.1)
];

// ************************************defaultColorsListForText*************************
const List<Color> textdefaultColors = [
  Color.fromRGBO(0, 0, 0, 0.1),
  Color(0x44CCCCCC),
  Color.fromRGBO(0, 0, 0, 0.1),
];

//
// **************************************CustomBoxDecoration****************************
// [animation]
// [isDarkMode]
// [beginAlign]
// [endAlign]
//
Decoration radiusBoxDecoration(
    {required Animation animation,
    bool isDarkMode = false,
    bool isPurplishMode = false,
    bool hasCustomColors = false,
    AlignmentGeometry beginAlign = Alignment.topLeft,
    AlignmentGeometry endAlign = Alignment.bottomRight,
    List<Color> colors = defaultColors,
    double radius = 10.0}) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      shape: BoxShape.rectangle,
      gradient: LinearGradient(
          begin: beginAlign,
          end: endAlign,
          colors: hasCustomColors
              ? colors.map((color) {
                  return color;
                }).toList()
              : [
                  isPurplishMode
                      ? const Color(0xFF8D71A9)
                      : isDarkMode
                          ? const Color(0xFF1D1D1D)
                          : const Color.fromRGBO(0, 0, 0, 0.1),
                  isPurplishMode
                      ? const Color(0xFF36265A)
                      : isDarkMode
                          ? const Color(0XFF3C4042)
                          : const Color(0x44CCCCCC),
                  isPurplishMode
                      ? const Color(0xFF8D71A9)
                      : isDarkMode
                          ? const Color(0xFF1D1D1D)
                          : const Color.fromRGBO(0, 0, 0, 0.1),
                ],
          stops: [animation.value - 2, animation.value, animation.value + 1]));
}
//
// **************************************CustomBoxDecoration****************************
//
//

//
// **************************************buildButtomBox**********************************
//
Widget buildButtomBox(Animation _animation,
    {required double width,
    required double height,
    required bool isDarkMode,
    required bool isRectBox,
    required bool isPurplishMode,
    required AlignmentGeometry beginAlign,
    required AlignmentGeometry endAlign,
    required bool hasCustomColors,
    required List<Color> colors,
    bool isVideoShimmer = false}) {
  return Container(
    margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
    height: height,
    width: width,
    decoration: customBoxDecoration(
        animation: _animation,
        isDarkMode: isDarkMode,
        isPurplishMode: isPurplishMode,
        isRectBox: isRectBox,
        beginAlign: beginAlign,
        endAlign: endAlign,
        hasCustomColors: hasCustomColors,
        colors: colors.length == 3 ? colors : defaultColors),
  );
}
//
// **************************************buildButtomBox**********************************
//

