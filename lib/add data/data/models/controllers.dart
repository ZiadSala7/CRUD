import 'package:crud_app/add%20data/data/models/crud_model.dart';
import 'package:flutter/material.dart';

TextEditingController nameController = TextEditingController();
TextEditingController descController = TextEditingController();
TextEditingController pricController = TextEditingController();
List<CrudModel> list = [];

resetControllers() {
  nameController.clear();
  descController.clear();
  pricController.clear();
}
