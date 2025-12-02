import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Простое меню',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Заголовок меню
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Имя Пользователя',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'user@example.com',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Пункты меню
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Главная'),
              onTap: () {
                Navigator.pop(context);
                // Действие при нажатии
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Настройки'),
              onTap: () {
                Navigator.pop(context);
                // Навигация на страницу настроек
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text('О приложении'),
              onTap: () {
                Navigator.pop(context);
                // Действие при нажатии
              },
            ),

            // Разделитель
            Divider(),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Выйти'),
              onTap: () {
                Navigator.pop(context);
                // Действие выхода
              },
            ),
          ],
        ),
      ),

      // Основное содержимое страницы
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Добро пожаловать!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Кнопка нажата!')));
              },
              child: Text('Нажми меня'),
            ),
          ],
        ),
      ),

      // Плавающая кнопка
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Действие FAB
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
