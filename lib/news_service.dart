import 'package:news/models/news.dart';

class NewsService {
  Future<List<News>> fetchNews() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      News(
        id: "1",
        title: "Teknologi Terbaru 2025",
        description: "Artificial Intelligence (AI) akan menjadi salah satu teknologi yang paling berpengaruh di tahun 2025.",
        content: "AI dapat melakukan tugas-tugas yang biasanya membutuhkan kecerdasan manusia, seperti memahami, belajar, dan mengambil keputusan. AI dapat membantu manusia dalam berbagai bidang, seperti pendidikan, bisnis, dan kehidupan sehari-hari. ",
        imageUrl: "https://desaplembutan.gunungkidulkab.go.id/assets/files/artikel/sedang_1676695344What-is-M.Tech-in-Artificial-Intelligence_AI.jpg",
        category: "teknologi",
        author: "Elsa Nurlia",
        publishedAt: DateTime.now(),
      ),
      News(
        id: "2",
        title: "Ekonomi Global Meningkat",
        description: "Ekonomi global menunjukkan peningkatan dengan proyeksi pertumbuhan pada 2025 dan 2026.",
        content: "Analisis lengkap mengenai perkembangan ekonomi global.",
        imageUrl: "https://infobanknews.com/wp-content/uploads/2024/02/Ekonomi-Global.jpg",
        category: "ekonomi",
        author: "Jane Smith",
        publishedAt: DateTime.now(),
      ),
    ];
  }
}
