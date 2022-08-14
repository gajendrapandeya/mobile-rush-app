import 'package:challenge_one/models/techonology.dart';
import 'package:flutter/cupertino.dart';

class TechonologyItem extends StatelessWidget {
  const TechonologyItem({
    Key? key,
    required this.technology,
  }) : super(key: key);
  final Technology technology;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 60.0,
          child: Image.asset(
            technology.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Text(technology.title),
      ],
    );
  }
}
