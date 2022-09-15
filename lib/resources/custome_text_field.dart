import 'package:kopa/resources/colors.dart';
import 'package:kopa/resources/fonts.dart';
import 'package:flutter/material.dart';

// class CustomInputFieldWidget extends StatelessWidget {
//   final TextEditingController controller;
//   final String prefix;
//   final bool obscure;

//   const CustomInputFieldWidget({
//     Key? key,
//     required this.controller,
//     required this.obscure,
//     required this.prefix,
//   }) : super(key: key);

// class CustomInputFieldWidgetState extends CustomInputFieldWidget {
//   final controller = TextEditingController();
//   final obscure = false;
//   final prefix = "";

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 45),
//       child: TextField(
//         keyboardType: TextInputType.phone,
//         controller: controller,
//         style: fontSize14.copyWith(
//           color: colorTextWhite,
//         ),
//         obscureText: obscure,
//         maxLength: 10,
//         decoration: InputDecoration(
//           prefix: Padding(
//             padding: const EdgeInsets.only(
//               left: 30,
//               top: 5,
//               bottom: 5,
//             ),
//             child: Text(
//               prefix,
//             ),
//           ),
//           counterStyle: fontSize10.copyWith(
//             color: colorBackground,
//           ),
//           prefixStyle: fontSize14.copyWith(
//             color: colorTextWhite,
//           ),
//           hintStyle: fontSize14.copyWith(
//             color: colorTextWhite,
//           ),
//           //
//           //Error text
//           // errorText: 'Номер введено невiрно',
//           // errorStyle: fontSize10,
//           contentPadding: const EdgeInsets.only(
//             left: 10,
//           ),
//           // Focus
//           focusedBorder: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(50),
//             ),
//             borderSide: BorderSide(
//               color: colorPrimary,
//               width: 2,
//             ),
//           ),
//           // Enable
//           enabledBorder: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(50),
//             ),
//             borderSide: BorderSide(
//               color: colorInput,
//               width: 2,
//             ),
//           ),
//           // Error
//           errorBorder: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(50),
//             ),
//             borderSide: BorderSide(
//               color: colorErrorInput,
//               width: 2,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// }

class CustomeTextField extends StatelessWidget {
  final TextEditingController controller;
  final String prefix;
  final bool obscure;

  const CustomeTextField({
    Key? key,
    required this.controller,
    required this.prefix,
    required this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: controller,
        style: fontSize14.copyWith(
          color: colorTextWhite,
        ),
        obscureText: obscure,
        maxLength: 10,
        decoration: InputDecoration(
          prefix: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 5,
              bottom: 5,
            ),
            child: Text(
              prefix,
            ),
          ),
          counterStyle: fontSize10.copyWith(
            color: colorBackground,
          ),
          prefixStyle: fontSize14.copyWith(
            color: colorTextWhite,
          ),
          hintStyle: fontSize14.copyWith(
            color: colorTextWhite,
          ),
          //
          //Error text
          // errorText: 'Номер введено невiрно',
          // errorStyle: fontSize10,
          contentPadding: const EdgeInsets.only(
            left: 10,
          ),
          // Focus
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: colorPrimary,
              width: 2,
            ),
          ),
          // Enable
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: colorInput,
              width: 2,
            ),
          ),
          // Error
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: colorErrorInput,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
