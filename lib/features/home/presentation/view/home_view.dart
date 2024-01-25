import 'package:bookly_app_test/core/utils/router_manager.dart';
import 'package:bookly_app_test/features/home/presentation/view/widgets/home_body_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';

class HomeView extends StatelessWidget{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.images.logo),
        actions: [
          IconButton(onPressed: (){
            context.push(AppRouter.searchPath);
          }, icon: const FaIcon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
      body: const HomeBodyViewWidget(),
    );
  }
}