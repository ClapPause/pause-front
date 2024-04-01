import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants/constants_color.dart';
import '../../../models/question/question.dart';
import '../../../services/question_service.dart';

class QuestionSheet extends StatefulWidget {
  final void Function() onTap;
  final String uid;

  const QuestionSheet({super.key, required this.onTap, required this.uid});

  @override
  State<QuestionSheet> createState() => _QuestionSheetState();
}

class _QuestionSheetState extends State<QuestionSheet> {
  final TextEditingController _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: FutureBuilder(
            future: QuestionService.getLastQuestionByUid(uid: widget.uid),
            builder: (context, snapshot) {
              Question? question = snapshot.data;
              if (question == null) return Container();
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () =>FocusScope.of(context).unfocus(),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 36),
                  padding: const EdgeInsets.all(20),
                  height: 376,
                  width: double.infinity,
                  decoration: BoxDecoration(color: kWhiteColor),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF8A8A8A),
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Q${question.number}.',
                            style: TextStyle(
                              height: 20 / 16,
                              fontSize: 16,
                              color: kBlackColor,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              question.question,
                              style: TextStyle(
                                fontSize: 14,
                                height: 20 / 14,
                                color: kBlack400,
                                backgroundColor:
                                    const Color(0xFFFFDBDB).withOpacity(0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: TextField(
                          controller: _answerController,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            isDense: true,
                            counterText: '',
                            hintText: '50자 이상 적어주세요(권장).',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: kTextFieldHintColor,
                              height: 16 / 12,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 12,
                            color: kBlack300,
                            height: 16 / 12,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await QuestionService.answerQuestion(
                                  questionId: question.id,
                                  answer: _answerController.text);
                              widget.onTap();
                            },
                            behavior: HitTestBehavior.opaque,
                            child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFA5A5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                '기록하기',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 16 / 12,
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
