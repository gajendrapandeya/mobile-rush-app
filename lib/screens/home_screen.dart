import 'package:challenge_one/utils/app_contants.dart';
import 'package:challenge_one/utils/color_utils.dart';
import 'package:challenge_one/widgets/home_screen_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          title: const Text(
            'Home',
            style: TextStyle(
              color: ColorUtils.stoneBlack,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo_ebpearls.png',
                  height: 100,
                  width: 100,
                ),
              ),
              const Text(
                'Award-winning \ndigital agency',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorUtils.stoneBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12.0,
                  children: const [
                    HomeScreenItem(
                      title: '3400+',
                      subTitle: 'Projects delivered',
                      assetUrl: 'assets/ic_projects.png',
                    ),
                    HomeScreenItem(
                      title: '180+',
                      subTitle: 'Developers',
                      assetUrl: 'assets/ic_developers.png',
                    ),
                    HomeScreenItem(
                      title: '15+',
                      subTitle: 'Years in operation',
                      assetUrl: 'assets/ic_years_tick.png',
                    ),
                    HomeScreenItem(
                      title: '68+',
                      subTitle: 'International Awards',
                      assetUrl: 'assets/ic_happy.png',
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                height: 100.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    6.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorUtils.stoneBlack.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  color: Colors.grey.shade50,
                ),
                alignment: Alignment.center,
                child: const Text(
                  AppConstants.aboutEb,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
