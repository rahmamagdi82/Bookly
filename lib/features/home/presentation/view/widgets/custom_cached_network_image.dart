import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/widgets/custom_fading_widget.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.fill,
      placeholder: (context,text){
        return CustomFadingWidget(child: Container(color: ColorManager.gray,));
      },
    );
  }
}
