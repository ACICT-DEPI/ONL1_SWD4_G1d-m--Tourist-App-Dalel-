import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/features/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        side: BorderSide(
          color: AppColors.lightGrey,
        ),
        onChanged: (newValue) {
          setState(() {
            value = newValue!;
            BlocProvider.of<AuthCubit>(context)
                .updateTermsAndConditionCheckBox(newValue: newValue);
          });
        });
  }
}
