import 'package:banking_app/view/login_screen.dart';
import 'package:banking_app/widgets/app_style.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ENTER YOUR DETAILS',style: appStyle(22, Colors.black, FontWeight.w500),),
        centerTitle: true,
        leading: IconButton.outlined(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: MediaQuery.of(context).size.height*0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.purple.shade500,strokeAlign: 1)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextFieldForm(
                        label: 'ENTER DEBIT CARD NUMBER',
                        hintText: 'ENTER 16 DIGIT DEBIT CARD NUMBER',
                      ),
                      TextFieldForm(
                        label: 'ATM PIN',
                        hintText: 'ENTER 4 DIGIT ATM PIN',
                      ),
                      TextFieldForm(
                        label: 'CNIC/NICOP/NTN',
                        hintText: 'ENTER CNIC NUMBER OR NTN NUMBER',
                      ),
                      TextFieldForm(
                        label: 'ACCOUNT NUMBER',
                        hintText: 'ENTER 14 DIGIT ACCOUNT e.g BBBB-AAAAAAAAAA',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50,),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(Colors.black),
                    fixedSize: const WidgetStatePropertyAll(Size(350, 50)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen())),
                  child: Text('Register',style: appStyle(18, Colors.white, FontWeight.w500),)),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    super.key, required this.label, required this.hintText,
  });
  final String label,hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          label: Text(label,style: appStyle(18, Colors.blueGrey.shade700, FontWeight.w500),),
          helper: Text(hintText,style: appStyle(12, Colors.blueGrey.shade900, FontWeight.w500),),
          contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
