import 'package:flutter/material.dart';
import 'package:newproject/constants/styles.dart';

class AnswerItem extends StatelessWidget {
  final String answer;
  final bool isSelected;
  final bool isMultichoice;
  final VoidCallback onTap;

  const AnswerItem({
    Key? key,
    required this.answer,
    required this.isSelected,
    required this.isMultichoice,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.lightLavender
                : const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color:
                  isSelected ? AppColors.fadedPurple30 : Colors.grey.shade300,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected
                        ? const Color.fromARGB(0, 184, 178, 255)
                        : AppColors.primary,
                    width: 1.5,
                  ),
                  color: isSelected ? AppColors.primary : Colors.transparent,
                ),
                child: isSelected
                    ? const Icon(
                        Icons.check,
                        size: 14,
                        color: Colors.white,
                      )
                    : null,
              ),
              const SizedBox(width: 16),
              Text(
                answer,
                style: AppTextStyles.h2.copyWith(
                  color: AppColors.primary,
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
