import 'package:empresas_flutter/app/theme/ioasys_colors.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    Key? key,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  @override
  State<StatefulWidget> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool obscureText = true;

  void tooglePasswordVisibility() {
    setState(() => obscureText = !obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: widget.validator,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: tooglePasswordVisibility,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              obscureText
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              color: IoasysColors.inputTxt,
            ),
          ),
        ),
      ),
    );
  }
}
