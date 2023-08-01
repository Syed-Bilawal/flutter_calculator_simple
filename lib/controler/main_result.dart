import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:withdrawal_app/controler/home.dart';
import 'package:withdrawal_app/views/sub_result.dart';
import '../views/widgets/main_result.dart';
class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);
  final calculatorCtrl = Get.find<CalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column( 
          children: [
            SubResult(text: '${calculatorCtrl.firstNumber}'),
            SubResult(text: '${calculatorCtrl.operator}'),
            SubResult(text: '${calculatorCtrl.secondNumber}'),
            const Divider( 
              height: 10,
              thickness: 5,
              color: Colors.white,

            ),
            MainResultText(text: '${calculatorCtrl.mathResult}'),
          ],
        ));
  }
}