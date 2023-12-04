import 'package:flutter/material.dart';
import 'package:uni_book/core/components/appbar/appbar.dart';
import 'package:uni_book/core/components/button/custom_button.dart';
import 'package:uni_book/core/components/text_field/name_form_widget.dart';
import 'package:uni_book/core/components/text_field/password_input_field.dart';
import 'package:uni_book/core/components/text_field/phone_input_field.dart';
import 'package:uni_book/core/init/constants/color_constants.dart';


class KayitOlEkrani extends StatefulWidget {
  const KayitOlEkrani({super.key});

  @override
  State<KayitOlEkrani> createState() => _KayitOlEkraniState();
}

class _KayitOlEkraniState extends State<KayitOlEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Kayıt Ol",
        titleColor:  ColorConstants.secondaryColor,
        backgroundColor: ColorConstants.primaryColor,
        leadingIcon: Icons.arrow_back,
        leadingIconColor: ColorConstants.secondaryColor,
        actionsIconColor: ColorConstants.secondaryColor,
        onActionsIconPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Text("Kayıt olmak için lütfen bilgilerini gir.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),),
              SizedBox(height: MediaQuery.of(context).size.height/40,),
              NameInputField(),
              SizedBox(height: MediaQuery.of(context).size.height/40,),
              PasswordInputField(),
              SizedBox(height: MediaQuery.of(context).size.height/40,),
              PhoneInputField(),
              SizedBox(height: MediaQuery.of(context).size.height/14,),
              Text("Senin Gebze Teknik Üniversitesi'nde öğrenci olduğunu doğrulamamız gerek!", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),),
              SizedBox(height: MediaQuery.of(context).size.height/14,),
              CustomButton(
                inputText: 'Öğrenci Kimlik Kartı Yükle',
                style: TextStyle(color: ColorConstants.primaryColor),
                backgroundColor: ColorConstants.secondaryColor,
                onPressed: () {

                },
                wrapText: true,
                width: MediaQuery.of(context).size.width * 0.85,
                height:  MediaQuery.of(context).size.height/13,
                borderRadius: 20,
                boxShadow: BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/14,),
              CustomButton(
                inputText: 'Kayıt Ol',
                style: TextStyle(color: ColorConstants.primaryColor),
                backgroundColor: ColorConstants.secondaryColor,
                onPressed: () {

                },
                wrapText: true,
                width: MediaQuery.of(context).size.width * 0.85,
                height:  MediaQuery.of(context).size.height/13,
                borderRadius: 20,
                boxShadow: BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
