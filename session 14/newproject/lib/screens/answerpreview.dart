import 'package:flutter/material.dart';
import 'package:newproject/constants/assets.dart';
import 'package:newproject/constants/styles.dart';

class AnswerPreview extends StatefulWidget {
  final Map<String, String> answers;

  const AnswerPreview({
    Key? key,
    required this.answers,
  }) : super(key: key);

  @override
  _AnswerPreviewState createState() => _AnswerPreviewState();
}

class _AnswerPreviewState extends State<AnswerPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Answers', style: AppTextStyles.h1),
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            Assets.assetsImagesQUESTION,
            fit: BoxFit.cover,
          ),
        ),
        ListView.builder(
          itemCount: widget.answers.length,
          itemBuilder: (context, index) {
            String question = widget.answers.keys.elementAt(index);
            List<String> answers =
                widget.answers.values.elementAt(index).split(', ');
            return Card(
              color: AppColors.secondary,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question,
                      style: AppTextStyles.h2,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      answers.join(', '),
                      style: AppTextStyles.h3,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
