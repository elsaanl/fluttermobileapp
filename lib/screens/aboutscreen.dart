import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: Text(
          'Tentang Aplikasi',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2D3748),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F7FA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xFF2D3748),
              size: 20,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            
            // Logo Section
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF1E88E5),
                    Color(0xFF1565C0),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF1E88E5).withOpacity(0.4),
                    blurRadius: 30,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: const Icon(
                Icons.newspaper_rounded,
                size: 80,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            
            Text(
              'News App',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 8),
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1E88E5), Color(0xFF1565C0)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Version 1.0.0',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 32),
            
            // About Card
            _buildCard(
              title: 'Tentang Aplikasi 📱',
              icon: Icons.info_rounded,
              color: const Color(0xFF1E88E5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'News App adalah aplikasi berita modern yang menyajikan informasi terkini dari berbagai kategori. Didesain dengan antarmuka yang intuitif dan user-friendly.',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      height: 1.6,
                      color: const Color(0xFF4A5568),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow(
                    icon: Icons.category_rounded,
                    label: 'Kategori',
                    value: '6 Kategori Berita',
                  ),
                  const SizedBox(height: 8),
                  _buildInfoRow(
                    icon: Icons.article_rounded,
                    label: 'Berita',
                    value: 'Update Harian',
                  ),
                  const SizedBox(height: 8),
                  _buildInfoRow(
                    icon: Icons.language_rounded,
                    label: 'Bahasa',
                    value: 'Bahasa Indonesia',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Features Card
            _buildCard(
              title: 'Fitur Utama ⚡',
              icon: Icons.star_rounded,
              color: const Color(0xFFFF9800),
              child: Column(
                children: [
                  _buildFeatureItem(
                    icon: Icons.auto_awesome_rounded,
                    title: 'Berita Terkini',
                    description: 'Update berita dari berbagai sumber terpercaya',
                    color: const Color(0xFF1E88E5),
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    icon: Icons.category_rounded,
                    title: 'Kategori Lengkap',
                    description: 'Politik, Ekonomi, Teknologi, Olahraga, dll',
                    color: const Color(0xFF4CAF50),
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    icon: Icons.favorite_rounded,
                    title: 'Simpan Favorit',
                    description: 'Tandai berita favorit untuk dibaca nanti',
                    color: const Color(0xFFE53935),
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    icon: Icons.palette_rounded,
                    title: 'UI Modern',
                    description: 'Design colorful dan user-friendly',
                    color: const Color(0xFF9C27B0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Technology Stack Card
            _buildCard(
              title: 'Technology Stack 💻',
              icon: Icons.code_rounded,
              color: const Color(0xFF9C27B0),
              child: Column(
                children: [
                  _buildLibraryItem(
                    name: 'google_fonts',
                    description: 'Font Poppins untuk typography modern',
                    color: const Color(0xFF4285F4),
                  ),
                  _buildLibraryItem(
                    name: 'http',
                    description: 'HTTP Client untuk API communication',
                    color: const Color(0xFF34A853),
                  ),
                  _buildLibraryItem(
                    name: 'shared_preferences',
                    description: 'Local storage untuk data persistence',
                    color: const Color(0xFFEA4335),
                  ),
                  _buildLibraryItem(
                    name: 'flutter_spinkit',
                    description: 'Loading indicators yang menarik',
                    color: const Color(0xFFFBBC04),
                  ),
                  _buildLibraryItem(
                    name: 'cached_network_image',
                    description: 'Image caching untuk performa optimal',
                    color: const Color(0xFF00BCD4),
                  ),
                  _buildLibraryItem(
                    name: 'intl',
                    description: 'Date & time formatting',
                    color: const Color(0xFFFF9800),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Developer Card
            _buildCard(
              title: 'Developer Info 👨‍💻',
              icon: Icons.person_rounded,
              color: const Color(0xFF4CAF50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF1E88E5), Color(0xFF1565C0)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.code_rounded,
                          color: Colors.pink,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elsa Nurlia',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF2D3748),
                              ),
                            ),
                            Text(
                              '23552011331',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: const Color(0xFF718096),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            // Footer
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFF1E88E5).withOpacity(0.1),
                    const Color(0xFF1565C0).withOpacity(0.05),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF1E88E5).withOpacity(0.2),
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFFE53935),
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'News App ',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF4A5568),
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFFE53935),
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '© 2025 News App',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1E88E5),
                    ),
                  ),
                  Text(
                    'All rights reserved',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: const Color(0xFF718096),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required IconData icon,
    required Color color,
    required Widget child,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color, color.withOpacity(0.7)],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2D3748),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Icon(icon, size: 18, color: const Color(0xFF1E88E5)),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2D3748),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: const Color(0xFF718096),
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2D3748),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                description,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: const Color(0xFF718096),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLibraryItem({
    required String name,
    required String description,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.check_circle_rounded,
              size: 16,
              color: color,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color(0xFF2D3748),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xFF718096),
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}