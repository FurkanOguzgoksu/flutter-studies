import 'package:flutter/material.dart';
import 'package:vericekme/features/class_book.dart';
import 'package:vericekme/features/fetch_value.dart';
import 'package:vericekme/features/http_services.dart';
import 'package:vericekme/features/class_meal.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: ListPage()),
  );
}

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  Future<FetchValue<Book>>? booksFuture;
  Future<FetchValue<Meal>>? mealsFuture;

  @override
  void initState() {
    super.initState();

    // Kitapları getir
    booksFuture = HttpServices.fetchItem<FetchValue<Book>>(
      apiLink: 'https://api.freeapi.app/api/v1/public/books?page=1&limit=10',
      fromJson: (json) => FetchValue<Book>.fromJson(json, Book.fromJson),
    );

    // Yemekleri getir
    mealsFuture = HttpServices.fetchItem<FetchValue<Meal>>(
      apiLink: 'https://api.freeapi.app/api/v1/public/meals?page=1&limit=10',
      fromJson: (json) => FetchValue<Meal>.fromJson(json, Meal.fromJson),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kitaplar ve Yemekler")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Kitaplar"),
            FutureBuilder<FetchValue<Book>>(
              future: booksFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Hata: ${snapshot.error}"));
                } else if (!snapshot.hasData || snapshot.data!.items!.isEmpty) {
                  return const Center(child: Text("Hiç kitap bulunamadı."));
                } else {
                  final books = snapshot.data!.items!;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      final book = books[index];
                      return ListTile(
                        title: Text(book.volumeInfo?.title ?? "Başlık yok"),
                        subtitle: Text(
                          book.volumeInfo?.authors?.join(', ') ?? "Yazar yok",
                        ),
                      );
                    },
                  );
                }
              },
            ),
            const Divider(),
            Text("Yemekler"),
            FutureBuilder<FetchValue<Meal>>(
              future: mealsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Hata: ${snapshot.error}"));
                } else if (!snapshot.hasData || snapshot.data!.items!.isEmpty) {
                  return const Center(child: Text("Hiç yemek bulunamadı."));
                } else {
                  final meals = snapshot.data!.items!;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: meals.length,
                    itemBuilder: (context, index) {
                      final meal = meals[index];
                      return ListTile(
                        title: Text(meal.strMeal ?? "Yemek adı yok"),
                        subtitle: Text(meal.strCategory ?? "Kategori yok"),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
