import 'package:flutter/material.dart';
import '../../theme/theme.dart'; // Adjust path based on your structure

/// A reusable button widget with primary/secondary styles and optional icon.
class BlaButton extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final IconData? icon;
  final VoidCallback onPressed;

  const BlaButton({
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: isPrimary ? BlaColors.white : BlaColors.primary,
        backgroundColor: isPrimary ? BlaColors.primary : BlaColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              BlaSpacings.radiusLarge), // Assuming radiusMedium is defined
          side: isPrimary
              ? BorderSide.none
              : BorderSide(color: BlaColors.primary),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: BlaSpacings.m,
          vertical: BlaSpacings.s,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: BlaSpacings.m),
            SizedBox(width: BlaSpacings.m),
          ],
          Text(
            text,
            style: isPrimary ? BlaTextStyles.button : BlaTextStyles.button,
          ),
        ],
      ),
    );
  }
}
