import 'package:crud_app/add%20data/data/models/controllers.dart';
import 'package:crud_app/add%20data/presentation/views/widgets/buttons_section.dart';
import 'package:crud_app/add%20data/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddDataViewBody extends StatelessWidget {
  const AddDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CustomTextField(
            hintTxt: 'Name : ',
            controller: nameController,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintTxt: 'Description : ',
            controller: descController,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintTxt: 'Price : ',
            controller: pricController,
          ),
          const SizedBox(
            height: 5,
          ),
          const ButtonsSection(),
        ],
      ),
    );
  }
}
