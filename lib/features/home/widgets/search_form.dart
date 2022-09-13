import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
    required this.outlineInputBorder,
  }) : super(key: key);

  final OutlineInputBorder outlineInputBorder;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: "Search items..",
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: 48,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    backgroundColor: const Color(0xFFF67952)),
                child: SvgPicture.asset('assets/icons/Filter.svg'),
                onPressed: () {},
              ),
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
        ),
      ),
    );
  }
}
