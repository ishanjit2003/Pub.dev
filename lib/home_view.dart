import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        actions: [
          badges.Badge(
            badgeAnimation: const badges.BadgeAnimation.fade(
                disappearanceFadeAnimationDuration: Duration(seconds: 10)),
            badgeContent: const Text(
              "5",
              style: TextStyle(color: Colors.white),
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            badgeStyle: badges.BadgeStyle(
                borderRadius: BorderRadius.circular(5),
                badgeColor: Colors.black),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        title: const Center(child: Text("Pub.Dev")),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Icon(Icons.home),
              // Icon(CupertinoIcons.home),
              // Icon(FontAwesomeIcons.home),

              const ReadMoreText(
                "Lorem Ipsum is simply  dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                //trimLength: 2,
                style: TextStyle(color: Colors.white),
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: "more",

                trimExpandedText: "Less",
                moreStyle: TextStyle(color: Colors.black),
                lessStyle: TextStyle(color: Colors.yellow),
                //colorClickableText: Colors.yellow,
              ),

              badges.Badge(
                badgeAnimation: badges.BadgeAnimation.fade(
                    disappearanceFadeAnimationDuration: Duration(seconds: 10)),
                badgeContent: Text(
                  "5",
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(
                  Icons.notifications,
                  size: 50,
                ),
              ),

              //ANIMATED TEXTS
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 20.0, height: 100.0),
                  const Text(
                    'Be',
                    style: TextStyle(fontSize: 43.0),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('AWESOME'),
                        RotateAnimatedText('OPTIMISTIC'),
                        RotateAnimatedText('DIFFERENT'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('It is not enough to do your best,'),
                      TyperAnimatedText('you must know what to do,'),
                      TyperAnimatedText('and then do your best'),
                      TyperAnimatedText('- W.Edwards Deming'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),

              //PINCODE
              SizedBox(
                height: 30,
              ),

              PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: true,
                obscuringCharacter: "@",
                backgroundColor: Colors.white,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  activeColor: Colors.yellow,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.deepOrange
                  //fieldHeight: 50,
                  // fieldWidth: 40
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
