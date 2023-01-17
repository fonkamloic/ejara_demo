// create a payment method screen widget

import 'package:ejara_demo/core/style/app_colors.dart';
import 'package:ejara_demo/core/style/decoration.dart';
import 'package:ejara_demo/l10n/l10n.dart';
import 'package:ejara_demo/payment_method/view/add_payment_method.dart';
import 'package:ejara_demo/payment_method/view/widgets/app_buttom.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //variable that holds height status bar
    final appBarHeight = MediaQuery.of(context).padding.top;
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;
    final scrollController = ScrollController(initialScrollOffset: 55);

    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints cts) {
          return Padding(
            padding: EdgeInsets.only(
              top: appBarHeight,
              bottom: cts.maxWidth * 0.025,
              left: cts.maxWidth * 0.025,
              right: cts.maxWidth * 0.025,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: cts.maxWidth * 0.1,
                      height: cts.maxWidth * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.backgroundColor,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: cts.maxWidth * 0.03,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    cts.maxWidth * 0.03,
                    cts.maxWidth * 0.01,
                    cts.maxWidth * 0.03,
                    cts.maxWidth * 0.05,
                  ),
                  child: Text(
                    l10n.paymentMethodTitle,
                    maxLines: 2,
                    style: textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.28,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: cts.maxWidth * 0.6,
                        width: cts.maxWidth * 0.9,
                        decoration: BoxDecore.boxDecoration(cts),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: cts.maxWidth * 0.01,
                              ),
                              child: Container(
                                height: cts.maxWidth * 0.15,
                                width: cts.maxWidth * 0.15,
                                decoration: BoxDecore.boxDecoration(cts),
                                child: const Icon(Icons.folder),
                              ),
                            ),
                            Text(
                              'Ejara Flex',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: textTheme.caption,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '20,000',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: textTheme.headline3,
                                ),
                                Text(
                                  'CFA',
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  style: textTheme.headline1?.copyWith(
                                    fontSize: cts.maxWidth * 0.08,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                            const Divider(
                              thickness: 0.5,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: cts.maxWidth * 0.03,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Earnings per day',
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                    style: textTheme.caption?.copyWith(
                                      fontSize: cts.maxWidth * 0.03,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '10,000CFA',
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    style: textTheme.caption,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: cts.maxWidth * 0.025,
                    left: cts.maxWidth * 0.03,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Select a payment methods',
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        style: textTheme.bodyText1?.copyWith(
                          fontSize: cts.maxWidth * 0.04,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.415,
                  width: double.infinity,
                  child: ListView.separated(
                    controller: scrollController,
                    // scroll extend start from index 3
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: cts.maxWidth * 0.15,
                        width: cts.maxWidth * 0.9,
                        child: ListTile(
                          onTap: () {
                            // create a bottom navigation sheet
                            showModalBottomSheet(
                              constraints: cts,
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    cts.maxWidth * 0.05,
                                  ),
                                  topRight: Radius.circular(
                                    cts.maxWidth * 0.05,
                                  ),
                                ),
                              ),
                              builder: (context) {
                                return Container(
                                  // height: cts.maxHeight * 0.5,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: cts.maxWidth * 0.03,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        cts.maxWidth * 0.05,
                                      ),
                                      topRight: Radius.circular(
                                        cts.maxWidth * 0.05,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(),
                                          const Text(
                                            'Select the mobile money method',
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(Icons.close),
                                          )
                                        ],
                                      ),
                                      const Divider(),
                                      SizedBox(
                                        height: cts.maxHeight * 0.25,
                                        child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return SizedBox(
                                              height: cts.maxWidth * 0.18,
                                              width: cts.maxWidth * 0.9,
                                              child: ListTile(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                leading: Radio(
                                                  value: index,
                                                  groupValue: 0,
                                                  onChanged: (value) {},
                                                ),
                                                title: Text(
                                                  'Orange Money',
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: textTheme.caption,
                                                ),
                                                subtitle: Text(
                                                  'Orange Money',
                                                  maxLines: 1,
                                                  textAlign: TextAlign.left,
                                                  style: textTheme.caption,
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return const Divider();
                                          },
                                          itemCount: 3,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Expanded(
                                            child: Divider(),
                                          ),
                                          Text(' Or '),
                                          Expanded(
                                            child: Divider(),
                                          ),
                                        ],
                                      ),
                                      AppButton(
                                        isSecondary: true,
                                        label: '+  Add a new method',
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const AddPaymentMethod(),
                                            ),
                                          );
                                        },
                                      ),
                                      AppButton(
                                        label: l10n.continueButton,
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          leading: Container(
                            height: cts.maxWidth * 0.1,
                            width: cts.maxWidth * 0.1,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.backgroundColor,
                            ),
                            child: const Icon(Icons.folder),
                          ),
                          title: Text(
                            'Ejara Flex',
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: textTheme.subtitle1?.copyWith(
                              fontSize: cts.maxWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            '20,000CFA',
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: textTheme.subtitle2?.copyWith(
                              fontSize: cts.maxWidth * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: cts.maxWidth * 0.7,
                        child: const Divider(
                          thickness: 0.3,
                        ),
                      );
                    },
                    itemCount: 5,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
