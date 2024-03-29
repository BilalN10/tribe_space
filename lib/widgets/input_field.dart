import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../utils/size_config.dart';

// ignore: must_be_immutable
class InputField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  bool isPass;
  final IconData sufixIcon;
  final Function validator;
  final bool isSufix;
  final bool isCircular;

  final TextInputType textInputType;
  InputField({
    Key? key,
    required this.controller,
    required this.isSufix,
    required this.validator,
    this.textInputType = TextInputType.text,
    this.isPass = false,
    required this.sufixIcon,
    required this.label,
    required this.hint,
    this.isCircular = false,
  }) : super(key: key);

  @override
  _MyInputFieldState createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<InputField> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          // color: widget.isCircular ? const Color(0xffF4F6F9) : Colors.white,
          borderRadius: widget.isCircular
              ? const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))
              : BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 2 * SizeConfig.widthMultiplier, vertical: 0),
        child: TextFormField(
          cursorColor: primaryColor,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: widget.isPass && showPass,
          // maxLines: 3,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIcon: widget.isPass
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                    child: widget.isPass && showPass
                        ? Image.asset('assets/icons/icon_eye.png')
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                showPass = !showPass;
                              });
                            },
                            child: const Icon(
                              Icons.remove_red_eye,
                              color: primaryColor,
                            )),
                  )
                : const SizedBox(),
            contentPadding: const EdgeInsets.only(top: 10, left: 10.0),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            hintStyle: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
