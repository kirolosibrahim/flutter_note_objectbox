import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddNoteWidget extends StatelessWidget {
  final TextEditingController titleTextEditingController;
  final TextEditingController bodyTextEditingController;
  final Function() function;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AddNoteWidget(
      {super.key,
      required this.titleTextEditingController,
      required this.bodyTextEditingController,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: titleTextEditingController,
                autofocus: true,
                expands: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Empty Title";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Title',
                  hintText: 'Insert Title',
                  border: OutlineInputBorder(),
                ),
              ),
              const Gap(10),
              TextFormField(
                controller: bodyTextEditingController,
                autofocus: true,
                expands: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Empty Body";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Body',
                  hintText: 'Insert Body',
                  border: OutlineInputBorder(),
                ),
              ),
              const Gap(20),
              Center(
                child: ElevatedButton(
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Save',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      function();
                    }
                  },
                ),
              ),
              const Gap(5),
            ],
          ),
        ),
      ),
    );
  }
}
