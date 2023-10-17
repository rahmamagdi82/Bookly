import 'package:bookly_app_test/features/splash/pressentation/widgets/sliding_text.dart';
import 'package:bookly_app_test/gen/assets.gen.dart';
import 'package:bookly_app_test/resource/constants.dart';
import 'package:bookly_app_test/resource/values_Manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/router.dart';
import '../../../home/pressentation/view/home_view.dart';

class SplashViewWidget extends StatefulWidget {
  const SplashViewWidget({super.key});

  @override
  State<SplashViewWidget> createState() => _SplashViewWidgetState();
}

class _SplashViewWidgetState extends State<SplashViewWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigationTo();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(Assets.images.logo, width: AppSize.s250),
        const SizedBox(
          height: AppSize.s14,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation(){
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigationTo(){
    Future.delayed(const Duration(seconds: 3),(){
      GoRouter.of(context).go(AppRouter.homeViewPath);
      // Get.to(()=>const HomeView(),transition: Transition.fade,duration: AppConstants.transitionDuration);
    });
  }

}
