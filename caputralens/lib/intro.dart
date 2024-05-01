import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
//import 'package:chewie/ch';
class IntroPage extends StatefulWidget {
   IntroPage({super.key});
  

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final VideoPlayerController videoPlayerController=VideoPlayerController.asset("asset/ANIMATED PHOTOGRAPHY LOGO.mp4");
 // ChewieController?chewieController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}