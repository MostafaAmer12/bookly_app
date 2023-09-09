import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/features/Splash/presentation/views/widgets/slider_text_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    initAnimation();
    getToHomeView();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetData.kLogo),
          const SizedBox(
            height: 7,
          ),
          SlidingTextAnimation(
            sliderAnimation: sliderAnimation,
          ),
        ],
      ),
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    sliderAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(
      animationController,
    );
    animationController.forward();
  }

  void getToHomeView() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(
        //   () => const HomeView(),
        //   transition: Transition.fade,
        //   duration: kTransitionDuration,
        // );
        GoRouter.of(context).push(AppRoutes.kHomeView);
      },
    );
  }
}
