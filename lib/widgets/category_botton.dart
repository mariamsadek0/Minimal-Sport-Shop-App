import 'package:flutter/material.dart';

class CategoryBotton extends StatelessWidget {
  //  المتغيرات
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  // الcostructor
  const CategoryBotton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  // 3. build
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 14,
      ),

       decoration: BoxDecoration(
        color: isSelected
            ? Colors.blue
            : Colors.grey.shade200,

        borderRadius: BorderRadius.circular(15),
      ),

        child: Text(
          text,
          style: TextStyle(
          color:
           isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
          ),

        // هنكمله بعدين
      ),
    );
  }
}
