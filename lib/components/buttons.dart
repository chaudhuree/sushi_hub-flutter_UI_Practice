import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onTap});

  final VoidCallback? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          backgroundColor: const Color.from(alpha: 0.239, red: 0.886, green: 0.369, blue: 0.369),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.white, // text color
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 12),
            Icon(
              Icons.arrow_forward,
              color: Colors.white, // icon color (set independently if needed)
            ),
          ],
        ),
      ),
    );
  }
}