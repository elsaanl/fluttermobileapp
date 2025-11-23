import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/news.dart';

class FavoriteService {
  static const String _favoritesKey = 'favorites_news';

  // Simpan berita ke favorit
  Future<bool> addToFavorites(News news) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final favorites = await getFavorites();
      
      // Cek apakah sudah ada di favorit
      if (favorites.any((item) => item.id == news.id)) {
        return false; // Sudah ada
      }
      
      favorites.add(news);
      
      // Convert ke JSON dan simpan
      final jsonList = favorites.map((item) => item.toJson()).toList();
      await prefs.setString(_favoritesKey, jsonEncode(jsonList));
      
      return true;
    } catch (e) {
      return false;
    }
  }

  // Hapus berita dari favorit
  Future<bool> removeFromFavorites(String newsId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final favorites = await getFavorites();
      
      favorites.removeWhere((item) => item.id == newsId);
      
      // Convert ke JSON dan simpan
      final jsonList = favorites.map((item) => item.toJson()).toList();
      await prefs.setString(_favoritesKey, jsonEncode(jsonList));
      
      return true;
    } catch (e) {
      return false;
    }
  }

  // Cek apakah berita sudah difavoritkan
  Future<bool> isFavorite(String newsId) async {
    final favorites = await getFavorites();
    return favorites.any((item) => item.id == newsId);
  }

  // Ambil semua berita favorit
  Future<List<News>> getFavorites() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString(_favoritesKey);
      
      if (jsonString == null || jsonString.isEmpty) {
        return [];
      }
      
      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((json) => News.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  // Hapus semua favorit
  Future<void> clearAllFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_favoritesKey);
  }
}