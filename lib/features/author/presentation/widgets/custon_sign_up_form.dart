import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/author/data/cubit/author_cubit.dart';
import 'package:dalel/features/author/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/author/presentation/widgets/terms_and_condition_widget.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
            key: authCubit.signUpFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  text: AppStrings.fristName,
                  onChanged: (fristName) {
                    authCubit.firstName = fristName;
                  },
                ),
                CustomTextFormField(
                  text: AppStrings.lastName,
                  onChanged: (lastName) {
                    authCubit.lastName = lastName;
                  },
                ),
                CustomTextFormField(
                  text: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                CustomTextFormField(
                  text: AppStrings.password,
                  onChanged: (password) {
                    authCubit.password = password;
                  },
                ),
                const TermsAndConditionWidget(),
                CustomButton(
                  buttonColor: authCubit.termsAndConditionCheckBoxValue == false
                      ? AppColors.grey
                      : null,
                  onPressed: () {
                    if (authCubit.termsAndConditionCheckBoxValue == true) {
                      if (authCubit.signUpFormKey.currentState!.validate()) {
                        authCubit.signUpWithEmailAndPassword();
                      }
                    }
                  },
                  buttonString: AppStrings.signUp,
                ),
              ],
            ));
      },
    );
  }
}
