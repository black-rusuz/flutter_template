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
  final Color? color;
  final BoxShadow? shadow;
  final VoidCallback? onTap;

  const BasicCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.borderRadius,
    this.color,
    this.shadow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? _defaultRadius,
        child: Ink(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius ?? _defaultRadius,
            boxShadow: [shadow ?? _defaultShadow],
          ),
          child: child,
        ),
      ),
    );
  }
}
