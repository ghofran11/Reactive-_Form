import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:test_reactive_form/sample_screen.dart';

class LoginSampel extends StatelessWidget {
  LoginSampel({Key? key}) : super(key: key);


  final form = FormGroup({

    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),

    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
    'passwordConfirmation': FormControl<String>(
      validators: [
        Validators.mustMatch('password', 'passwordConfirmation'),
      ]
    )




    
  }
  );

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
        title: const Text('Login'),
        body: ReactiveForm(
          formGroup:form ,
          child: Column(
            children: [
          
             const SizedBox(
                height: 20,
              ),
              ReactiveTextField(
                formControlName: 'email',
                validationMessages:(control) => {
                  ValidationMessage.required: 'The email must not be empty',
                  ValidationMessage.email:
                  'The email value must be a valid email',
                  'unique': 'This email is already in use',
                },
               textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ReactiveTextField(
                formControlName: 'password',
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
                validationMessages:(control)=>{
                  ValidationMessage.required:'The password must not be empty',
                  ValidationMessage.minLength:'The password must be at least 8 characters',
                },

              ),
              const SizedBox(
                height: 20,
              ),
              ReactiveTextField(
                formControlName: 'passwordConfirmation',
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
                validationMessages:(control)=>{
                  ValidationMessage.required:'The password must not be empty',
                  ValidationMessage.mustMatch:'The password not matched'
                },

              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    final form = ReactiveForm.of(context);
                    if(form!.valid){
                      print('yes');
                    }
                    else{
                      print('no');
                    }
                  },
                  child:const Text('Login'))
            ],
          ),
        )
    );
  }
}
