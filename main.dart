// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flujo de Vistas',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/menu': (context) => MainMenuScreen(),
        '/faq': (context) => FAQScreen(),
        '/register': (context) => RegisterScreen(),
        '/calculator': (context) => CalculatorScreen(),
      },
    );
  }
}

// Vista de Login con estilo azul marino y celeste
class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003366), // Azul marino
      appBar: AppBar(
        title: Text('Inicio de Sesión', 
               style: TextStyle(color: Colors.lightBlueAccent[100])), // Celeste claro
        backgroundColor: const Color(0xFF002244), // Azul marino más oscuro
        elevation: 10, // Sombra más pronunciada
        iconTheme: IconThemeData(color: Colors.lightBlueAccent[100]), // Iconos celestes
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo o ícono decorativo (efecto estético adicional)
            Icon(Icons.lock_person, 
                 size: 80, 
                 color: Colors.lightBlueAccent[100]),
            SizedBox(height: 30),
            
            // Campo de usuario con efectos
            TextField(
              controller: _usernameController,
              style: TextStyle(color: Colors.white), // Texto blanco
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
                labelStyle: TextStyle(color: Colors.lightBlueAccent[100]), // Celeste
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlueAccent[100]!, width: 2)),
                prefixIcon: Icon(Icons.person, color: Colors.lightBlueAccent[100]),
                filled: true,
                fillColor: const Color(0xFF002244).withOpacity(0.5),
              ),
            ),
            SizedBox(height: 20),
            
            // Campo de contraseña con efectos
            TextField(
              controller: _passwordController,
              obscureText: true,
              style: TextStyle(color: Colors.white), // Texto blanco
              decoration: InputDecoration(
                labelText: 'Contraseña',
                labelStyle: TextStyle(color: Colors.lightBlueAccent[100]), // Celeste
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlueAccent[100]!, width: 2)),
                prefixIcon: Icon(Icons.lock, color: Colors.lightBlueAccent[100]),
                filled: true,
                fillColor: const Color(0xFF002244).withOpacity(0.5),
            )),
            SizedBox(height: 30),
            
            // Botón con efecto de gradiente
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlueAccent[100]!,
                    Colors.blueAccent[400]!,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
              )],
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/menu');
                }, // Texto azul marino
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                ),
                child: Text('Iniciar Sesión', 
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF003366))),
              ),
            ),
            
            // Enlace de "Olvidé mi contraseña" (efecto estético adicional)
            TextButton(
              onPressed: () {},
              child: Text('¿Olvidaste tu contraseña?',
                  style: TextStyle(
                    color: Colors.lightBlueAccent[100]!.withOpacity(0.8),
                    decoration: TextDecoration.underline)),
            ),
          ],
        ),
      ),
    );
  }
}

// Menú Principal con estilo azul marino y celeste
class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003366), // Azul marino
      appBar: AppBar(
        title: Text('Menú Principal', 
               style: TextStyle(
                 color: Colors.lightBlueAccent[100],
                 fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF002244), // Azul marino más oscuro
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent[100]),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Título decorativo
              Text('Bienvenido',
                  style: TextStyle(
                    color: Colors.lightBlueAccent[100],
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Selecciona una opción',
                  style: TextStyle(
                    color: Colors.lightBlueAccent[100]!.withOpacity(0.8),
                    fontSize: 16)),
              SizedBox(height: 40),
              
              // Botones del menú
              MenuButton(
                text: 'Preguntas Frecuentes (FAQ)',
                icon: Icons.help_outline,
                onPressed: () => Navigator.pushNamed(context, '/faq'),
              ),
              SizedBox(height: 20),
              MenuButton(
                text: 'Registro',
                icon: Icons.person_add,
                onPressed: () => Navigator.pushNamed(context, '/register'),
              ),
              SizedBox(height: 20),
              MenuButton(
                text: 'Calculadora',
                icon: Icons.calculate,
                onPressed: () => Navigator.pushNamed(context, '/calculator'),
              ),
              SizedBox(height: 40),
              
              // Botón de cerrar sesión con efecto
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.lightBlueAccent[100]!.withOpacity(0.3),
                    width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  icon: Icon(Icons.logout, 
                         color: Colors.lightBlueAccent[100]!.withOpacity(0.8)),
                  label: Text('Cerrar Sesión', 
                          style: TextStyle(
                            color: Colors.lightBlueAccent[100]!.withOpacity(0.8),
                            fontSize: 16)),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Botón reutilizable para el menú con estilo mejorado
class MenuButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const MenuButton({super.key, 
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF002244).withOpacity(0.8),
            const Color(0xFF003366).withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // ignore: duplicate_ignore
            // ignore: deprecated_member_use
            color: Colors.blue.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, 
               color: Colors.lightBlueAccent[100], 
               size: 24),
        label: Text(text,
               style: TextStyle(
                 color: Colors.lightBlueAccent[100],
                 fontSize: 16,
                 fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
// Modelo para las preguntas frecuentes
class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
// Vista de Preguntas Frecuentes con estilo azul marino y celeste
class FAQScreen extends StatelessWidget {

  
  final List<FAQItem> faqList = [
    FAQItem(
      question: '¿Cómo puedo cambiar mi contraseña?',
      answer: 'Para cambiar tu contraseña, ve a la sección de configuración y busca la opción "Cambiar contraseña".',
    ),
    FAQItem(
      question: '¿Cuáles son los métodos de pago aceptados?',
      answer: 'Aceptamos tarjetas de crédito, transferencias bancarias y pagos en efectivo en nuestras sucursales.',
    ),
    FAQItem(
      question: '¿Cómo restablezco mi cuenta?',
      answer: 'Puedes restablecer tu cuenta contactando al soporte técnico.',
    ),
    FAQItem(
      question: '¿Dónde encuentro mi historial de transacciones?',
      answer: 'El historial de transacciones está disponible en la sección "Mis movimientos".',
    ),
    FAQItem(
      question: '¿Qué hago si olvidé mi usuario?',
      answer: 'Puedes recuperar tu usuario usando tu correo electrónico registrado.',
    ),
    FAQItem(
      question: '¿Cómo contacto al soporte técnico?',
      answer: 'Puedes contactarnos por teléfono o correo electrónico 24/7.',
    ),
    FAQItem(
      question: '¿Hay cargos por transacción?',
      answer: 'Algunas transacciones pueden tener cargos dependiendo del método de pago.',
    ),
    FAQItem(
      question: '¿Cómo actualizo mi información personal?',
      answer: 'Puedes actualizar tu información en la sección "Mi perfil".',
    ),
    FAQItem(
      question: '¿Qué seguridad tiene mi información?',
      answer: 'Usamos encriptación de última generación para proteger tus datos.',
    ),
    FAQItem(
      question: '¿Puedo tener múltiples cuentas?',
      answer: 'Sí, pero cada una requiere un correo electrónico único.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003366), // Azul marino
      appBar: AppBar(
        title: Text('Preguntas Frecuentes',
               style: TextStyle(
                 color: Colors.lightBlueAccent[100],
                 fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF002244), // Azul marino más oscuro
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent[100]),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // ignore: deprecated_member_use
              const Color(0xFF003366).withOpacity(0.9),
              // ignore: deprecated_member_use
              const Color(0xFF002244).withOpacity(0.9),
            ],
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: faqList.length,
          itemBuilder: (context, index) {
            return FAQCard(faqItem: faqList[index]);
          },
        ),
      ),
    );
  }
}

// Tarjeta para mostrar cada pregunta-respuesta con nuevo diseño
class FAQCard extends StatelessWidget {
  final FAQItem faqItem;

  const FAQCard({super.key, required this.faqItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: const Color(0xFF002244).withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ExpansionTile(
        title: Text(faqItem.question,
               style: TextStyle(
                 color: Colors.lightBlueAccent[100],
                 fontWeight: FontWeight.bold,
                 fontSize: 16)),
        iconColor: Colors.lightBlueAccent[100],
        collapsedIconColor: Colors.lightBlueAccent[100],
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: const Color(0xFF001a33).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            ),
            child: Text(faqItem.answer,
                   style: TextStyle(
                     // ignore: deprecated_member_use
                     color: const Color.fromARGB(255, 190, 234, 255).withOpacity(0.9),
                     fontSize: 15)),
          ),
        ],
      ),
    );
  }
}


// Vista de Registro con estilo azul marino y celeste
class RegisterScreen extends StatelessWidget {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dniController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003366), // Azul marino
      appBar: AppBar(
        title: Text('Registro',
               style: TextStyle(
                 color: Colors.lightBlueAccent[100],
                 fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF002244), // Azul marino más oscuro
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent[100]),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Icono decorativo
              Icon(Icons.app_registration, 
                   size: 80, 
                   color: Colors.lightBlueAccent[100]),
              SizedBox(height: 30),
              
              // Campo de Nombre
              TextField(
                controller: _firstNameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  labelStyle: TextStyle(color: Colors.lightBlueAccent[100]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!, width: 2)),
                  prefixIcon: Icon(Icons.person, color: Colors.lightBlueAccent[100]),
                  filled: true,
                  // ignore: deprecated_member_use
                  fillColor: const Color(0xFF002244).withOpacity(0.5),
              )),
              SizedBox(height: 20),
              
              // Campo de Apellido
              TextField(
                controller: _lastNameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Apellido',
                  labelStyle: TextStyle(color: Colors.lightBlueAccent[100]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!, width: 2)),
                  prefixIcon: Icon(Icons.person_outline, color: Colors.lightBlueAccent[100]),
                  filled: true,
                  // ignore: deprecated_member_use
                  fillColor: const Color(0xFF002244).withOpacity(0.5),
                ),
              ),
              SizedBox(height: 20),
              
              // Campo de DNI
              TextField(
                controller: _dniController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'DNI',
                  labelStyle: TextStyle(color: Colors.lightBlueAccent[100]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!, width: 2)),
                  prefixIcon: Icon(Icons.badge, color: Colors.lightBlueAccent[100]),
                  filled: true,
                  // ignore: deprecated_member_use
                  fillColor: const Color(0xFF002244).withOpacity(0.5),
                ),
              ),
              SizedBox(height: 40),
              
              // Botón de Guardar con efecto
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlueAccent[100]!,
                      Colors.blueAccent[400]!,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.blue.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 55),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text('GUARDAR REGISTRO',
                         style: TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                           color: const Color(0xFF003366))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Vista de Calculadora
class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora',
               style: TextStyle(
                 color: Colors.lightBlueAccent[100],
                 fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF002244), // Azul marino más oscuro
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent[100]),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: calculadoraWidget(),
      ),
    );
  }
}

// Widget de calculadora (para que implementes tu código)
Widget calculadoraWidget() {
    const double tamanoTexto = 24.0;
    const double paddingBoton = 16.0;

    return Expanded(
        child: Column(
      children: <Widget>[
        // Pantalla de resultados
        Expanded(
            flex: 2,
            child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 6, 0, 95),
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.bottomRight,
                child: const Text("0",
                    style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(221, 126, 203, 255))))),

        // Fila de botones especiales
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 126, 126, 126),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("C",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 160, 160, 160),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("+/-",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 134, 134, 134),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("%",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 255, 72, 0),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("÷",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
        ])),

        // Primera fila de números
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 255, 185, 185),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("7",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 250, 230, 167),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("8",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 253, 252, 178),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("9",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("×",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
        ])),

        // Segunda fila de números
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 221, 243, 160),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("4",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 203, 250, 159),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("5",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 159, 255, 172),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("6",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: Color.fromARGB(255, 255, 72, 0),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("-",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
        ])),

        // Tercera fila de números
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 160, 252, 236),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("1",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 162, 226, 255),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("2",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 163, 162, 255),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("3",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("+",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
        ])),

        // Última fila con cero e igual
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                  color: const Color.fromARGB(255, 195, 163, 255),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("0",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 255, 162, 243),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text(".",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
          Expanded(
              child: Container(
                  color: Color.fromARGB(255, 255, 72, 0),
                  padding: const EdgeInsets.all(paddingBoton),
                  child: const Center(
                      child: Text("=",
                          style: TextStyle(
                              fontSize: tamanoTexto,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))),
        ])),
      ],
    ));
  }
