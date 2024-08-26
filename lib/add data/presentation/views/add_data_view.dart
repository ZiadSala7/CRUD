import 'package:crud_app/add%20data/presentation/views/widgets/add_data_view_body.dart';
import 'package:flutter/material.dart';

class AddDataView extends StatelessWidget {
  const AddDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter CRUD'),
      ),
      body: const AddDataViewBody(),
    );
  }
}
