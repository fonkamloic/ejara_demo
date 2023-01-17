import 'package:ejara_demo/core/style/app_colors.dart';
import 'package:ejara_demo/l10n/l10n.dart';
import 'package:ejara_demo/payment_method/view/widgets/app_buttom.dart';
import 'package:flutter/material.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    //variable that holds height status bar
    final appBarHeight = MediaQuery.of(context).padding.top;
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;
    const isON = true;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints cts) {
            return Padding(
              padding: EdgeInsets.only(
                top: appBarHeight,
                bottom: cts.maxWidth * 0.025,
                left: cts.maxWidth * 0.03,
                right: cts.maxWidth * 0.03,
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
                              Icons.close,
                              size: cts.maxWidth * 0.035,
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
                      cts.maxWidth * 0.03,
                      cts.maxWidth * 0.03,
                      cts.maxWidth * 0.05,
                    ),
                    child: Text(
                      l10n.addPaymentMethodTitle,
                      maxLines: 2,
                      style: textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Form(
                            child: Column(
                              children: [
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Choose a payment method'),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: cts.maxWidth * 0.013,
                                        ),
                                        child: Container(
                                          height: cts.maxWidth * 0.1,
                                          decoration: BoxDecoration(
                                            color: AppColors.backgroundColor,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                cts.maxWidth * 0.025,
                                              ),
                                            ),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(0, 2),
                                                blurRadius: 2,
                                              )
                                            ],
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: cts.maxWidth * 0.025,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text('Orange Money'),
                                              DropdownButton(
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                ),
                                                items: const [],
                                                onChanged: (value) {},
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Choose a payment method'),
                                      TextFormField(
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          hintText: '6 94 94 89 09',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Full name'),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'John Doe',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(-13, 0),
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.5,
                                        child: Switch.adaptive(
                                          activeColor: AppColors.primaryColor,
                                          value: isON,
                                          onChanged: (value) {},
                                        ),
                                      ),
                                      const Text('Save as payment method'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      AppButton(
                        label: 'Continue',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
