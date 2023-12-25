import 'package:flutter/material.dart';

class InterestsList extends StatelessWidget {
  const InterestsList(this._tags, {super.key});

  final List<String> _tags;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        direction: Axis.horizontal,
        children: [
          if (_tags.isNotEmpty) Tag(_tags.first),
          for(int i = 1; i < _tags.length; ++i) Tag(_tags[i]),
        ],
      ),
    );
  }
}

class Tag extends StatelessWidget {
  const Tag(this._name, {super.key});

  final String _name;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey.withAlpha(80),
        padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
        minimumSize: const Size(0, 0),
      ),
      child: Text(_name),
    );
  }

}
