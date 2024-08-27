import 'package:crud_app/add%20data/data/db%20helper/db_helper.dart';
import 'package:crud_app/add%20data/data/models/controllers.dart';
import 'package:crud_app/add%20data/data/models/crud_model.dart';
import 'package:crud_app/add%20data/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonsSection extends StatefulWidget {
  const ButtonsSection({
    super.key,
  });

  @override
  State<ButtonsSection> createState() => _ButtonsSectionState();
}

class _ButtonsSectionState extends State<ButtonsSection> {
  DbHelper dbHelper = DbHelper();
  @override
  void initState() {
    super.initState();
    dbHelper.initDB();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          title: 'Create',
          color: Colors.green,
          onPressed: () {
            CrudModel model = CrudModel(
              name: nameController.text,
              description: descController.text,
              price: pricController.text,
            );
            dbHelper.createMethod(model);
            resetControllers();
          },
        ),
        CustomButton(
          title: 'Read',
          color: Colors.blue,
          onPressed: () async {
            list = await dbHelper.readDataMethod();
            resetControllers();
          },
        ),
        CustomButton(
          title: 'Update',
          color: Colors.amber,
          onPressed: () {
            CrudModel model = CrudModel(
              name: nameController.text,
              description: descController.text,
              price: pricController.text,
            );
            dbHelper.updateMethod(model);
            resetControllers();
          },
        ),
        CustomButton(
          title: 'Delete',
          color: Colors.red,
          onPressed: () async {
            dbHelper.deleteMethod(nameController.text);
            setState(() async {
              list = await dbHelper.readDataMethod();
            });
            resetControllers();
          },
        ),
      ],
    );
  }
}
