import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  TextEditingController passwordController =
  TextEditingController();

  TextEditingController emailController =
  TextEditingController();

  void signIn(){
    String password = passwordController.text.trim();
    String email = emailController.text.trim();

    debugPrint("Password: $password");
    debugPrint("Email : $email");
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Text

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:const [Text("  Log in",style: TextStyle(
                 fontSize: 60,
                 color: Colors.black,
                 fontWeight: FontWeight.w400,
                 fontStyle: FontStyle.normal

             ),),],
           ),

            const SizedBox(height: 35,),


            /// email

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,

              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.black,width: 2),
                // borderRadius: BorderRadius.circular(50)

              ),

              child:  TextField(style: const TextStyle(fontSize: 20),
              controller: emailController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  border: InputBorder.none,
                  isCollapsed: true,
                  hintText: "Email"

                ),
              ),
            ),

            const SizedBox(height: 35,),

            /// password

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,

              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  border:Border.all(color: Colors.black,width: 2),
                  // borderRadius: BorderRadius.circular(50)

              ),

              child:  TextField(style: const TextStyle(fontSize: 20),
                controller: passwordController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    border: InputBorder.none,
                    isCollapsed: true,
                    hintText: "Password"

                ),
              ),
            ),

            const SizedBox(height: 35,),

     /// Button

            GestureDetector(
              onTap: signIn,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    border:Border.all(color: Colors.black,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.black
                ),
                child: const Text("LOG IN",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,

                ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}













