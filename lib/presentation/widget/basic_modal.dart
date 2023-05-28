import 'package:flutter/material.dart';

class BasicModal extends StatelessWidget {
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Color? backgroundColor;
  final List<double>? sizes;
  final Widget? image;
  final double? imageHeight;
  final Widget? child;

  const BasicModal({
    super.key,
    required this.padding,
    required this.borderRadius,
    required this.backgroundColor,
    required this.sizes,
    required this.image,
    required this.imageHeight,
    required this.child,
  });

  static void show({
    required BuildContext context,
    Widget? image,
    Widget? child,
    double? imageHeight,
    List<double>? sizes,
    EdgeInsets padding = EdgeInsets.zero,
    BorderRadius borderRadius = BorderRadius.zero,
    Color? backgroundColor,
    Color? barrierColor,
  }) {
    showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      isScrollControlled: true,
      barrierColor: barrierColor,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      builder: (context) => BasicModal(
        padding: padding,
        borderRadius: borderRadius,
        backgroundColor: backgroundColor,
        sizes: sizes,
        image: image,
        imageHeight: imageHeight,
        child: child,
      ),
    );
  }

  bool get _isSingleSize => sizes?.length == 1;

  bool get snap => sizes?.isNotEmpty == true;

  double get initial => _isSingleSize ? sizes?.first ?? 0.5 : (min + max) / 2;

  double get min => _isSingleSize ? initial - 0.000001 : sizes?.first ?? 0.1;

  double get max => _isSingleSize ? initial + 0.000001 : sizes?.last ?? 0.9;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      snap: snap,
      snapSizes: sizes,
      initialChildSize: initial,
      minChildSize: min,
      maxChildSize: max,
      builder: (context, controller) {
        return CustomScrollView(
          controller: controller,
          slivers: [
            if (image != null)
              SliverAppBar(
                toolbarHeight: 0,
                expandedHeight:
                    imageHeight ?? MediaQuery.of(context).size.width,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: borderRadius,
                    child: image,
                  ),
                ),
              ),
            if (child != null)
              SliverToBoxAdapter(
                child: child!,
              ),
          ],
        );
      },
    );
  }
}
