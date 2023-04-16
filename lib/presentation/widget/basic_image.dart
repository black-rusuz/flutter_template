import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasicImage extends StatelessWidget {
  final String source;
  final double? height;
  final double? width;
  final BoxFit fit;
  final BorderRadiusGeometry borderRadius;

  const BasicImage(
    this.source, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.borderRadius = BorderRadius.zero,
  });

  bool get isUrl => source.contains('http');

  Widget buildImage(BuildContext context) {
    return Builder(builder: isUrl ? buildNetworkImage : buildAssetImage);
  }

  Widget buildNetworkImage(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: source,
      height: height,
      width: width,
      fit: fit,
      errorWidget: buildSvg,
    );
  }

  Widget buildAssetImage(BuildContext context) {
    return Image.asset(
      source,
      height: height,
      width: width,
      fit: fit,
      errorBuilder: buildSvg,
    );
  }

  Widget buildSvg(BuildContext context, Object __, dynamic ___) => isUrl
      ? SvgPicture.network(source, height: height, width: width, fit: fit)
      : SvgPicture.asset(source, height: height, width: width, fit: fit);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Builder(
        builder: buildImage,
      ),
    );
  }
}
