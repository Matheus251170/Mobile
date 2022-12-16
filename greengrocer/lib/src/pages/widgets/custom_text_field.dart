import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final bool isPass;
  final String label;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool readOnly;
  final String? Function(String?)? validator;

  const CustomTextField(
      {Key? key,
      this.validator,
      required this.icon,
      required this.label,
      this.isPass = false,
      this.inputFormatters,
      this.initialValue,
      this.readOnly = false})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isVisible = widget.isPass;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        readOnly: widget.readOnly,
        initialValue: widget.initialValue,
        inputFormatters: widget.inputFormatters,
        obscureText: isVisible,
        validator: widget.validator,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isPass
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon:
                      Icon(isVisible ? Icons.visibility : Icons.visibility_off))
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          isDense: true,
          label: Text(widget.label),
        ),
      ),
    );
  }
}
