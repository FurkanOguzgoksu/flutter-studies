import 'package:flutter/material.dart';
import 'package:movies_app/home_page.dart';
import 'package:movies_app/movies.dart';

class MovieDetailPage extends StatefulWidget {
  final Movies movie;
  const MovieDetailPage({super.key, required this.movie});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.movie.moviesName}")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("images/${widget.movie.moviesImageName}"),
            Text(
              "${widget.movie.moviesPrice} \u{20BA}",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Kirala"),
                      content: Text(
                        "${widget.movie.moviesName} adlı filmi kiraladınız.",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(title: "Ana Sayfa"),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text("Tamam"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Kirala"),
            ),
          ],
        ),
      ),
    );
  }
}
