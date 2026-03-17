import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';

class AppDatePickerWidget extends StatelessWidget {
  final String label;
  final String hint;
  final DateTime? value;
  final Function(DateTime) onChanged;
  final bool isRequired;
  final DateTime? minDate;
  final DateTime? maxDate;
  const AppDatePickerWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.value,
    required this.onChanged,
    this.isRequired = false,
    this.minDate,
    this.maxDate,
  });

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: value ?? DateTime(2000),
      firstDate: minDate ?? DateTime(1900),
      lastDate: maxDate ?? DateTime.now(),
    );

    if (picked != null) {
      onChanged(picked);
    }
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 13, color: AppColors.textDark),
            ),
            if (isRequired)
              const Text(" *", style: TextStyle(color: Colors.red)),
          ],
        ),

        const SizedBox(height: 6),

        GestureDetector(
          onTap: () => _selectDate(context),
          child: Container(
            height: 48, // giống TextField
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.border),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value == null ? hint : _formatDate(value!),
                  style: TextStyle(
                    fontSize: 14,
                    color: value == null ? Colors.grey : Colors.black,
                  ),
                ),
                const Icon(Icons.calendar_today_outlined, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
