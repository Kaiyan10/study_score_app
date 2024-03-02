import 'package:flutter/material.dart';

class HomeViewScreen extends StatelessWidget {
  const HomeViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Topページ"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile_icon.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  Positioned(
                    right: -10,
                    bottom: 0,
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 2),
                            color: Colors.grey.shade100,
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
