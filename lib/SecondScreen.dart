import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второе окно'),
        centerTitle: true,
        backgroundColor: Colors.green,
        // Кнопка назад
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Возврат на предыдущее окно
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Icon(Icons.check_circle, size: 100, color: Colors.green),
            ),
            Text(
              'Вы успешно перешли!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Это 1 НАХУЙ ОКНО',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 40),

            // Кнопка для возврат
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Возврат на первое окно
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 10),
                  Text('Вернуться назад и дать пизды данилу'),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Дополнительная информация
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                children: [
                  Text(
                    'Информация о навигации:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '• Используйте кнопку выше или стрелку в AppBar для возврата\n'
                    '• Можно вернуться жестом "смахнуть назад" на iOS\n'
                    '• На Android - кнопка "Назад" системы',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
