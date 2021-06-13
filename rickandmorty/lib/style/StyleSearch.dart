import 'package:flutter/material.dart';


// @Copyright PauloMasonSkyDark - Paulo Daniel
Widget stylesSearch(
    {GlobalKey<FormState> formKey, GlobalKey<ScaffoldState> scaffoldKey}) {
  final labelStyle = TextStyle(
      fontWeight: FontWeight.w500, color: Colors.black54, fontSize: 15);

  return Form(
    key: formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 20,
            right: 14,
            left: 14,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            elevation: 8,
            child: TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Color(0xffc3c3c3)),
                hintText: "Procurar",
                labelStyle: labelStyle,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
// @Copyright PauloMasonSkyDark - Paulo Daniel