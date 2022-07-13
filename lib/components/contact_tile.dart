import 'package:flutter/material.dart';

class ContactTile extends StatefulWidget {
  const ContactTile(
      {Key? key,
      required this.value,
      required this.onChanged,
      required this.contactIcon,
      required this.contactTile})
      : super(key: key);

  final bool value;
  final ValueChanged<bool?> onChanged;
  final String contactTile;
  final IconData contactIcon;
  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  final focusNode = FocusNode(descendantsAreFocusable: false);
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      focusNode: focusNode,
      dense: true,
      value: widget.value,
      secondary: Icon(widget.contactIcon),
      onChanged: widget.onChanged,
      title: Text(widget.contactTile),
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}
