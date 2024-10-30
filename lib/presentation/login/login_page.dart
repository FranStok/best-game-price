import 'package:arquitectura/core/router/app_routes.dart';
import 'package:arquitectura/presentation/login/login_cubit/session_cubit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.primary,
          ),
          width: 400,
          height: 300,
          padding: const EdgeInsets.all(16),
          child: const _Form(),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({
    super.key,
  });

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _formKeyLogin = GlobalKey<FormBuilderState>();
  final _formKeyRegister = GlobalKey<FormBuilderState>();

  bool isLoginForm=true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SessionCubit, SessionState>(
      listenWhen: (previous, current) =>
          previous.userCredentials == null && current.userCredentials != null,
      listener: (context, state) {
        context.pushReplacement(AppRoutes.home.path);
      },
      builder: (context, state) {
        return FormBuilder(
            key: (isLoginForm) ? _formKeyLogin : _formKeyRegister,
            child: (isLoginForm)
                ? _LoginForm(
                    formKey: _formKeyLogin,
                    onRegisterPress: () {
                      isLoginForm = false;
                      setState(() {});
                    },
                  )
                : _RegisterForm(
                    formKey: _formKeyRegister,
                    onRegisterPress: () {
                      isLoginForm = true;
                      setState(() {});
                    },
                  ));
      },
    );
  }

}
  _sendForm(GlobalKey<FormBuilderState> _formKey, BuildContext context,bool isLoginForm) {
  _formKey.currentState?.saveAndValidate();
  print(_formKey.currentState?.value);
  isLoginForm
      ? BlocProvider.of<SessionCubit>(context).login(
          _formKey.currentState!.value['mail'],
          _formKey.currentState!.value['password'])
      : BlocProvider.of<SessionCubit>(context).register(
          _formKey.currentState!.value['mail'],
          _formKey.currentState!.value['password']);
  
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    super.key, required this.formKey, required this.onRegisterPress,
  });

  final GlobalKey<FormBuilderState> formKey;
  final void Function() onRegisterPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _mailField(formKey: formKey),
        const SizedBox(height: 16),
        _passwordField(formKey: formKey),
        const Spacer(),
        ElevatedButton(
            onPressed: () => _sendForm(formKey, context,true),
            child: (BlocProvider.of<SessionCubit>(context).state.isLoading)
                ? const CircularProgressIndicator()
                : Text(
                    "Iniciar sesión",
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
        const SizedBox(height: 12),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: '¿No tienes una cuenta? ',
              style: Theme.of(context).textTheme.labelMedium
            ),
            TextSpan(
                text: '¡Registrate!',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
    
                recognizer: TapGestureRecognizer()
                  ..onTap = onRegisterPress),
          ]),
        ),
      ],
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm({
    super.key,
    required this.formKey,
    required this.onRegisterPress,
  });

  final GlobalKey<FormBuilderState> formKey;
  final void Function() onRegisterPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         _mailField(formKey: formKey),
        const SizedBox(height: 16),
        _passwordField(formKey: formKey),
        const SizedBox(height: 16),
        _TextField(
          name: "password2",
          hint: "Confirme la contraseña",
          onEditingComplete: () => _sendForm(formKey, context,false),
          validator: (value) {
            if (formKey.currentState!.instantValue['password'] != value)
              return "Las contraseñas deben coincidir";
            if (value == null || value.isEmpty) return "error";
            return null;
          },
          obscureText: true,
        ),
        const Spacer(),
        ElevatedButton(
            onPressed: () => _sendForm(formKey, context,false),
            child: (BlocProvider.of<SessionCubit>(context).state.isLoading)
                ? const CircularProgressIndicator()
                : Text(
                    "Registrarse",
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
        const SizedBox(height: 12),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: '¿Ya tienes una cuenta? ',
                style: Theme.of(context).textTheme.labelMedium),
            TextSpan(
                text: '¡Inicia sesión!',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
                recognizer: TapGestureRecognizer()..onTap = onRegisterPress),
          ]),
        ),
      ],
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField({
    super.key,
    required this.name,
    required this.validator,
    this.obscureText = false,
    required this.onEditingComplete, required this.hint,
  });

  final String name;
  final String hint;
  final String? Function(String? value) validator;
  final bool obscureText;
  final void Function() onEditingComplete;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      validator: validator,
      cursorColor: Theme.of(context).colorScheme.onPrimary,
      obscureText: obscureText,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
        disabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
      ),
    );
  }
}

class _passwordField extends StatelessWidget {
  const _passwordField({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return _TextField(
      name: "password",
      hint: "Contraseña",
      onEditingComplete: () => _sendForm(formKey, context,true),
      validator: (value) {
        if (value == null || value.isEmpty) return "error";
        if(value.length<6) return 'La contraseña debe tener al menos 6 caracteres';
        return null;
      },
      obscureText: true,
    );
  }
}

class _mailField extends StatelessWidget {
  const _mailField({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return _TextField(
      name: "mail",
      hint: "Email",
      onEditingComplete:()=> _sendForm(formKey,context,true),
      validator: (value) {
        if (value == null || value.isEmpty) return "error";
        if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
            .hasMatch(value)) return 'No es un mail valido';
        return null;
      },
    );
  }
}
