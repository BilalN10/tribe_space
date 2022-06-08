import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../utils/size_config.dart';

// ignore: must_be_immutable
class NameField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  bool isPass;
  final IconData sufixIcon;
  final Function validator;
  final bool isSufix;
  final bool isCircular;

  final TextInputType textInputType;
  NameField({
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

class _MyInputFieldState extends State<NameField> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.isCircular
          ? 6 * SizeConfig.heightMultiplier
          : 6 * SizeConfig.heightMultiplier,
      decoration: widget.isCircular
          ? BoxDecoration(
              border: Border.all(color: greyColor),
              // color: widget.isCircular ? const Color(0xffF4F6F9) : Colors.white,
              borderRadius: BorderRadius.circular(10))
          : BoxDecoration(),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 2 * SizeConfig.widthMultiplier, vertical: 0),
        child: TextFormField(
          maxLines: 8,
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
            contentPadding: const EdgeInsets.only(top: 16, left: 10.0),
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
