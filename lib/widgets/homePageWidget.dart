import 'package:flutter/material.dart';
import 'package:flutter_agora_trial/constants/constants.dart';

class HomePageCard extends StatelessWidget {
  String title;
  Function onTap;

  HomePageCard({required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        height: height.value * 0.17,
        width: width.value * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xffF39C12),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.2),
                blurRadius: 5.0,
                offset: Offset(5, 5),
              ),
            ]),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }
}
