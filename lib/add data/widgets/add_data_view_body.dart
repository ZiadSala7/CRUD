import 'package:crud_app/add%20data/widgets/custom_text_field.dart';
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
          const CustomTextField(
            hintTxt: 'Name : ',
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(
            hintTxt: 'Description : ',
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(
            hintTxt: 'Price : ',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ziad",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
