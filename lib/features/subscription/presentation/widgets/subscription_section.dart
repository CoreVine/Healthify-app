import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:healthify_app/generated/l10n.dart';
import 'package:healthify_app/core/theming/app_paddings.dart';
import 'package:healthify_app/core/utils/functions/generate_hash_gateway.dart';
import 'package:healthify_app/core/widgets/custom_button.dart';
import 'package:healthify_app/features/subscription/presentation/pages/kashier_screen.dart';
import 'package:healthify_app/features/subscription/presentation/widgets/check_features_list.dart';
import 'package:healthify_app/features/subscription/presentation/widgets/monthly_subscription_card.dart';
import 'package:healthify_app/features/subscription/presentation/widgets/yearly_subscription_card.dart';

class SubscriptionSection extends StatefulWidget {
  const SubscriptionSection({super.key});

  @override
  State<SubscriptionSection> createState() => _SubscriptionSectionState();
}

class _SubscriptionSectionState extends State<SubscriptionSection> {
  String selectedCard = "monthly";

  double annuallyPrice = 1800;
  double annuallyDiscount = 10;
  double monthlyPrice = 150;
  double monthlyDiscount = 10.0;

  late double selectedPrice;

  @override
  void initState() {
    selectedPrice = monthlyDiscount == 0 ? monthlyPrice : monthlyPrice * (1 - monthlyDiscount / 100);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MonthlySubscriptionCard(
          title: S.of(context).monthly,
          price: monthlyPrice,
          isSelected: selectedCard == "monthly",
          discount: monthlyDiscount,
          onTap: () {
            setState(() {
              selectedCard = "monthly";
              selectedPrice = 150;
            });
          },
        ),
        SizedBox(
          height: AppPaddings.gap16.h,
        ),
        YearlySubscriptionCard(
          title: S.of(context).annual,
          price: annuallyPrice,
          discount: annuallyDiscount,
          isSelected: selectedCard == "annually",
          onTap: () {
            setState(() {
              selectedCard = "annually";
              selectedPrice = annuallyPrice * (1 - annuallyDiscount / 100);
            });
          },
        ),
        SizedBox(
          height: 16.h,
        ),
        CheckFeaturesList(),
        SizedBox(
          height: AppPaddings.gap80.h,
        ),
        CustomButton(
          text: S.of(context).subscribe_to_premium,
          onPressed: () {
            final hash = generateKashierOrderHash(
              amount: "100.00",
              currency: "EGP",
              merchantOrderId: "1",
            );
            String mid = dotenv.get("MID");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KashierPaymentScreen(
                  paymentUrl:
                      "https://payments.kashier.io/?merchantId=$mid&orderId=ORDER123&amount=$selectedPrice&currency=EGP&hash=$hash&mode=live&paymentRequestId=REQ123456&allowedMethods=card,meeza&defaultMethod=card&display=${Intl.getCurrentLocale()}&merchantRedirect=https://yassermuhamed.vercel.app&interactionSource=Ecommerce&enable3DS=true",
                ),
              ),
            );
          },
          width: double.infinity,
        )
      ],
    );
  }
}
