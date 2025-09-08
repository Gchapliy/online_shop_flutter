import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:elektrostok/core/constants/app_defaults.dart';
import 'skeleton.dart';

class NetworkImageWithLoader extends StatelessWidget {
  final BoxFit fit;

  /// This widget is used for displaying network image with a placeholder
  const NetworkImageWithLoader(
    this.src, {
    super.key,
    this.fit = BoxFit.cover,
    this.extraRadius = radius,
    this.borderRadius,
  });

  final String src;
  final double extraRadius;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          borderRadius ?? BorderRadius.all(Radius.circular(extraRadius)),
      child: CachedNetworkImage(
        fit: fit,
        imageUrl: src,
        imageBuilder:
            (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider, fit: fit),
              ),
            ),
        placeholder: (context, url) => const Skeleton(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
