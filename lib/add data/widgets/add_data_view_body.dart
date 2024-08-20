import 'package:crud_app/add%20data/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddDataViewBody extends StatelessWidget {
  const AddDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CustomTextField(
            hintTxt: 'Name : ',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintTxt: 'Description : ',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintTxt: 'Price : ',
          ),
        ],
      ),
    );
  }
}
