import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text(
              "Welcome",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Image.network(
              "https://www.google.com/search?client=ubuntu-sn&hs=9c6&sca_esv=7f063fa5aeb92d1e&channel=fs&sxsrf=ANbL-n45rzg6kliRfa8oGCheWN-r88AX7Q:1776503146759&udm=2&fbs=ADc_l-aN0CWEZBOHjofHoaMMDiKpaEWjvZ2Py1XXV8d8KvlI3o6iwGk6Iv1tRbZIBNIVs-7DjmheGwJ9kkYLzOq5Q2x5BcKxRQPbKaKWNRlSeszpk1HM7W28pvSBanPz9ynlhNpDItc_U1s_oSVP_ea7Te0-MCc2Rx9rX49eyurzxJ9HStIO1BUsw7XpN6yJRBczpkzoX0u7RAmAkwfhR8ZS8X3uv4kL1Q&q=login+illustrations+images&sa=X&ved=2ahUKEwir0YT4hfeTAxWVTmwGHazHOiIQtKgLegQIFhAB&biw=1300&bih=651&dpr=1#sv=CAMSVhoyKhBlLS1qUzJvbGkxNXJiemxNMg4talMyb2xpMTVyYnpsTToOdEhJSmtCQ2tfQTVRU00gBCocCgZtb3NhaWMSEGUtLWpTMm9saTE1cmJ6bE0YADABGAcg7vSxsghKCBABGAEgASgB",
            ),
          ],
        ),
      ),
    );
  }
}
