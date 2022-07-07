import 'package:flutter/material.dart';

class ContactTile extends StatefulWidget {
  final IconData contactIcon;
  final String contactTitle;
  final bool value;
  final ValueChanged<bool?> onChanged;
  const ContactTile({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.contactTitle,
    required this.contactIcon,
  }) : super(key: key);

  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  final focusNode = FocusNode(descendantsAreFocusable: false);
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: true,
      focusNode: focusNode,
      title: Text(widget.contactTitle),
      secondary: Icon(widget.contactIcon),
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}
