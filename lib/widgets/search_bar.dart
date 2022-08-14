import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        color: Colors.grey.shade200,
      ),
      alignment: Alignment.center,
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: TextInputAction.next,
        scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height,
        ),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          isDense: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Icon(
            CupertinoIcons.search,
            size: 22.0,
            color: Colors.grey.shade500,
          ),
          label: Text(
            'Search',
            style: TextStyle(
              color: Colors.grey.shade500,
            ),
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
