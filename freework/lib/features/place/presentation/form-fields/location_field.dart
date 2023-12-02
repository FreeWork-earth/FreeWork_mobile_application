
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'field_padding.dart';

/// A text field to input garden photo file name found in images subdirectory.
class LocationField extends StatelessWidget {
  const LocationField(
      {super.key,
      required this.fieldKey,
      this.currLocation});

  final GlobalKey<FormBuilderFieldState<FormBuilderField<dynamic>, dynamic>>
      fieldKey;
  final List<double>? currLocation;


  @override
  Widget build(BuildContext context) {
    String fieldName = 'Location Coordinates';
    return FieldPadding(
      child: FormBuilderTextField(
        name: fieldName,
        key: fieldKey,
        initialValue: currLocation,
        decoration: InputDecoration(
          labelText: fieldName,
          hintText: 'Maps Coordinates of your new Nice FW spot.',
        ),
      ),
    );
  }
}
