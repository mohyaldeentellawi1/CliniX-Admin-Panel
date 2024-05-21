import 'package:clinix_admin_panel/screens/profile_payment_information_screen/widgets/payment_info_item.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_container_button.dart';
import '../../../core/widgets/custom_span_description.dart';

class PaymentInfoBody extends StatefulWidget {
  const PaymentInfoBody({super.key});

  @override
  State<PaymentInfoBody> createState() => _PaymentInfoBodyState();
}

class _PaymentInfoBodyState extends State<PaymentInfoBody> {
  Map<int, bool> isAvailableMap = {};
  Map<int, TextEditingController> controllerMap = {};
  _PaymentInfoBodyState() {
    for (int i = 0; i < paymentList.length; i++) {
      isAvailableMap[i] = true;
      controllerMap[i] = TextEditingController();
    }
  }
  List<String> paymentList = [
    'Discounts',
    'Payment plans',
    'Free initial consultation',
    'Cheques',
    'Credit cards',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                "Please tick all the payment services which you offer. Please tick no for any you do not offer. If you are unsure of a service, you may tick neither and return to this list later."),
        const SizedBox(height: 25),
        SizedBox(
          height: height * .5,
          child: ListView.builder(
            itemCount: paymentList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: CustomPaymentInfoItem(
                    text: paymentList[index],
                    isAvilable: isAvailableMap[index]!,
                    onChanged: (newValue) {
                      setState(() {
                        isAvailableMap[index] = newValue;
                      });
                    },
                    controller: controllerMap[index]!,
                    width: width * .35),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        CustomContainerButton(onTap: () {}, buttonName: 'Update')
      ],
    );
  }
}
