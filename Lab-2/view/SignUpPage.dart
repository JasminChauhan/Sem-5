

import '../utils/ImportExport.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            APPBAR_TITLE,
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        ),
      ),
      body: Column(
        children: [
          Form(
              key: _key,
              child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter 3-50 characters, alphabets only";
                  }
                  if (!RegExp(r"^[a-zA-Z\s'-]{3,50}$").hasMatch(value)) {
                    return "Enter 3-50 characters, alphabets only";
                  }
                  return null;
                },
                controller: namecontroller,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Enter Your Name Here....",
                  hintText: "Name ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a valid email address.";
                  }
                  if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}")
                      .hasMatch(value)) {
                    return "Enter a valid email address.";
                  }
                  return null;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"^[a-zA-Z\s-']+$")),
                  LengthLimitingTextInputFormatter(10),
                ],
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Enter Your Email Here....",
                    hintText: "Email ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(validator: (value) {
                if (value!.isEmpty) {
                  return "Enter a valid 10-digit mobile number.";
                }
                if (!RegExp(r"^\+?[0-9]{10}$").hasMatch(value)) {
                  return "Enter a valid 10-digit mobile number.";
                }
                return null;
              },

                controller: phonenumbercontroller,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                decoration: InputDecoration(
                    labelText: "Enter Your Phone Number Here....",
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                      .hasMatch(value)) {
                    return "Password must be 8+ chars, include a number & symbol.";
                  }
                  return null;
                },
                controller: passwordcontroller,
                decoration: InputDecoration(
                    labelText: "Enter Your Password Here....",
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                      .hasMatch(value)) {
                    return "Password must be 8+ chars, include a number & symbol.";
                  }
                  return null;
                },
                controller: confirmpasswordcontroller,
                decoration: InputDecoration(
                    labelText: "Enter Your Password again Here....",
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
            ],
          ))
        ],
      ),
    );
  }
}
