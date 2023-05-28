import 'package:flutter/material.dart';

final _defaultRadius = BorderRadius.circular(15);
final _defaultShadow = BoxShadow(
  color: Colors.black.withOpacity(0.1),
  spreadRadius: 0,
  blurRadius: 20,
  offset: const Offset(0, 5),
);

class BasicCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadius? borderRadius;
  final Border? border;
  final Color? color;
  final BoxShadow? customShadow;
  final VoidCallback? onTap;

  const BasicCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.borderRadius,
    this.border,
    this.color,
    this.customShadow,
    this.onTap,
  });

  BorderRadius get _borderRadius => borderRadius ?? _defaultRadius;

  List<BoxShadow>? get _shadows =>
      color == null ? null : [customShadow ?? _defaultShadow];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: _borderRadius,
        child: Ink(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            border: border,
            borderRadius: _borderRadius,
            boxShadow: _shadows,
          ),
          child: child,
        ),
      ),
    );
  }
}
