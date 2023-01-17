import 'package:ejara_demo/core/style/app_colors.dart';
import 'package:ejara_demo/l10n/l10n.dart';
import 'package:ejara_demo/payment_method/payment_method.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints cts) {
        return MaterialApp(
          theme: whiteTheme(context, cts),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const PaymentMethodScreen(),
        );
      },
    );
  }

  ThemeData whiteTheme(BuildContext context, BoxConstraints cts) {
    return ThemeData(
      appBarTheme: const AppBarTheme(color: AppColors.scaffoldBackgroundColor),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: AppColors.primaryColor,
      ),
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      cardColor: AppColors.backgroundColor,
      dividerColor: AppColors.dividerColor,
      canvasColor: AppColors.canvasColor,
      shadowColor: AppColors.shadowColor,
      focusColor: AppColors.focusColor,
      hoverColor: AppColors.hoverColor,
      highlightColor: AppColors.highlightColor,
      splashColor: AppColors.splashColor,
      selectedRowColor: AppColors.selectedRowColor,
      unselectedWidgetColor: AppColors.unselectedWidgetColor,
      disabledColor: AppColors.disabledColor,
      toggleableActiveColor: AppColors.toggleableActiveColor,
      secondaryHeaderColor: AppColors.secondaryHeaderColor,
      dialogBackgroundColor: AppColors.dialogBackgroundColor,
      indicatorColor: AppColors.indicatorColor,
      hintColor: AppColors.hintColor,
      errorColor: AppColors.errorColor,
// set divider properties
      dividerTheme: DividerThemeData(
        color: AppColors.dividerColor.withOpacity(0.5),
        space: 0,
        thickness: 0.3,
        indent: 0,
        endIndent: 0,
      ),

      // set default elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cts.maxWidth * 0.035),
          ),
          padding: EdgeInsets.symmetric(
            vertical: cts.maxWidth * 0.04,
          ),
        ),
      ),

      // set default textbutton theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.secondaryColor,
          backgroundColor: AppColors.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cts.maxWidth * 0.035),
          ),
          padding: EdgeInsets.symmetric(
            vertical: cts.maxWidth * 0.04,
          ),
        ),
      ),


      // set default textformfield theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.dividerColor.withOpacity(0.5),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.dividerColor.withOpacity(0.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.dividerColor.withOpacity(0.5),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.dividerColor.withOpacity(0.5),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: cts.maxWidth * 0.03,
          vertical: cts.maxWidth * 0.03,
        ),
        labelStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: cts.maxWidth * 0.04,
        ),
        hintStyle: TextStyle(
          color: AppColors.hintColor,
          fontSize: cts.maxWidth * 0.04,
        ),
        errorStyle: TextStyle(
          color: AppColors.errorColor,
          fontSize: cts.maxWidth * 0.04,
        ),
        helperStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: cts.maxWidth * 0.04,
        ),
        prefixStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: cts.maxWidth * 0.04,
        ),
        suffixStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: cts.maxWidth * 0.04,
        ),
        counterStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: cts.maxWidth * 0.04,
        ),
      ),
      // set default text theme
      textTheme: Theme.of(context).textTheme.copyWith(
            headline1: Theme.of(context).textTheme.headline1?.copyWith(
                  color: AppColors.primaryColor,
                ),
            headline2: Theme.of(context).textTheme.headline2?.copyWith(
                  color: AppColors.primaryColor,
                ),
            headline3: Theme.of(context).textTheme.headline3?.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: cts.maxWidth * 0.08,
                ),
            headline4: Theme.of(context).textTheme.headline4?.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: cts.maxWidth * 0.076,
                ),
            headline5: Theme.of(context).textTheme.headline5?.copyWith(
                  color: AppColors.primaryColor,
                ),
            headline6: Theme.of(context).textTheme.headline6?.copyWith(
                  color: AppColors.primaryColor,
                ),
            subtitle1: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: AppColors.primaryColor,
                ),
            subtitle2: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: AppColors.primaryColor,
                ),
            bodyText1: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: AppColors.primaryColor,
                ),
            bodyText2: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: AppColors.primaryColor,
                ),
            caption: Theme.of(context).textTheme.caption?.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: cts.maxWidth * 0.035,
                  fontWeight: FontWeight.w500,
                ),
            button: Theme.of(context).textTheme.button?.copyWith(
                  color: AppColors.primaryColor,
                ),
            overline: Theme.of(context).textTheme.overline?.copyWith(
                  color: AppColors.primaryColor,
                ),
          ),

      // set default icon color to primary color
      iconTheme: const IconThemeData(color: AppColors.primaryColor),
    );
  }
}
