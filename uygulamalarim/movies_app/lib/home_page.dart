import 'package:flutter/material.dart';
import 'package:movies_app/movie_detail_page.dart';
import 'package:movies_app/movies.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Movies>> fetchMovies() async {
    var moviesList = <Movies>[];
    var f1 = Movies(1, "Anadoluda", "anadoluda.png", 150.99);
    var f2 = Movies(2, "Django", "django.png", 99.99);
    var f3 = Movies(3, "Inception", "inception.png", 79.99);
    var f4 = Movies(4, "Interstellar", "interstellar.png", 121.99);
    var f5 = Movies(5, "The Hateful Eight", "thehatefuleight.png", 50.99);
    var f6 = Movies(6, "The Pianist", "thepianist.png", 98.99);

    moviesList.add(f1);
    moviesList.add(f2);
    moviesList.add(f3);
    moviesList.add(f4);
    moviesList.add(f5);
    moviesList.add(f6);

    return moviesList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: fetchMovies(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var moviesList = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3.5,
              ),
              itemCount: moviesList.length,
              itemBuilder: (context, index) {
                var movie = moviesList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailPage(movie: movie),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/${movie.moviesImageName}"),
                        ),
                        Text(
                          "${movie.moviesName}",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${movie.moviesPrice}",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
