import 'package:crud_app/add%20data/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          title: 'Create',
          color: Colors.green,
          onPressed: () {},
        ),
        CustomButton(
          title: 'Read',
          color: Colors.blue,
          onPressed: () {},
        ),
        CustomButton(
          title: 'Update',
          color: Colors.amber,
          onPressed: () {},
        ),
        CustomButton(
          title: 'Create',
          color: Colors.red,
          onPressed: () {},
        ),
      ],
    );
  }
}
