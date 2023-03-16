import 'package:flutter/material.dart';

import '../../core/constant/ColorManager.dart';


class Text_Field extends StatelessWidget {
  Text_Field({
    this.hint,
    this.width = double.infinity,
    this.PrefixIcon,
    this.SuffixIcon,
    this.keyboardType,
    this.FillColor,
     this.Enabled =true,

    Key? key,
    Function(dynamic value)? onSaved,
  }) : super(key: key);
  final  hint;
  final double width;
  final  keyboardType;
  final PrefixIcon;
  final SuffixIcon;
  final FillColor;
  final bool Enabled;


  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
        child: SizedBox(
          height: 44,
          width: double.infinity,
          child: TextFormField(
            enabled: Enabled,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                prefixIcon: PrefixIcon,
                suffixIcon: SuffixIcon,
                contentPadding: const EdgeInsets.only(left: 16),
                hintText: hint,
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: ColorManager.secondaryTextColor,
                ),
                fillColor: FillColor),
          ),
        ));
  }
}
