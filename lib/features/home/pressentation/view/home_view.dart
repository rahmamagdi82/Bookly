import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../gen/assets.gen.dart';
import '../widgets/home_body_view_widget.dart';

class HomeView extends StatelessWidget{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.images.logo),
        actions: [
          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
      body: const HomeBodyViewWidget(),
    );
  }
}