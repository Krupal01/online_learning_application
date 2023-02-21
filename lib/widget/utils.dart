import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget space({double? horizontal, double? vertical}) {
  return SizedBox(
    width: horizontal ?? 0,
    height: vertical ?? 0,
  );
}

OutlineInputBorder getFocusBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(
      color: Theme.of(context).primaryColor,
    ),
  );
}

OutlineInputBorder getEnabledBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: const BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  );
}

OutlineInputBorder getErrorBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: const BorderSide(
      color: Colors.red,
      width: 1.0,
    ),
  );
}

const grey300Text12 = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.normal,
  fontSize: 12,
);

const greyText16 = TextStyle(
  color: Colors.grey,
  fontSize: 16,
);

const grey300Text16 = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.normal,
  fontSize: 16,
);

TextStyle primaryText16 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: HexColor("#3D5CFF"),
);

const blackText24 = TextStyle(
  fontSize:24,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

const blackText20 = TextStyle(
  fontSize:20,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

const blackText18 = TextStyle(
  fontSize:18,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

const blackText16 = TextStyle(
  fontSize:16,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle primaryText20 = TextStyle(
  fontSize:20,
  fontWeight: FontWeight.w500,
  color: HexColor("#3D5CFF"),
);

ButtonStyle primaryTextButton16 = ButtonStyle(
  textStyle: MaterialStateProperty.all(primaryText16),
);


Color light_pitch = HexColor("#F4F3FD");
Color custom_gray = HexColor('#F4F3FD');
Color icon_gray = HexColor("#B8B8D2");
