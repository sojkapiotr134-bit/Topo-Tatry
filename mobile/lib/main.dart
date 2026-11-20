
import 'package:flutter/material.dart';

void main() {
  runApp(const TatryTopoApp());
}

class TatryTopoApp extends StatelessWidget {
  const TatryTopoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TatryTopo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF101714),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF9BB89A),
          secondary: Color(0xFFC2D0B8),
          surface: Color(0xFF1A2420),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 18),

                    const Text(
                      'TATRYTOPO',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      'POZA UTARTYM SZLAKIEM',
                      style: TextStyle(
                        fontSize: 11,
                        letterSpacing: 2,
                        color: Colors.white.withValues(alpha: 0.55),
                      ),
                    ),

                    const SizedBox(height: 32),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        color: const Color(0xFF24352C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'ODKRYWAJ TATRY',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 2,
                              color: Color(0xFFC2D0B8),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Góry, które\nczekają na poznanie.',
                            style: TextStyle(
                              fontSize: 27,
                              height: 1.2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 22),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.map_outlined),
                            label: const Text('Otwórz mapę'),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),

                    const Text(
                      'EKSPLORUJ',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16),

                    const ExploreTile(
                      icon: Icons.landscape_outlined,
                      title: 'Szczyty i przełęcze',
                      subtitle: 'Poznaj obiekty topograficzne',
                    ),

                    const ExploreTile(
                      icon: Icons.route_outlined,
                      title: 'Drogi i przejścia',
                      subtitle: 'Granie, drogi wspinaczkowe i historie przejść',
                    ),

                    const ExploreTile(
                      icon: Icons.bookmark_border,
                      title: 'Moje zapisane',
                      subtitle: 'Twoje ulubione miejsca i trasy',
                    ),
                  ],
                ),
              ),
            ),

            NavigationBar(
              backgroundColor: const Color(0xFF1A2420),
              selectedIndex: 0,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Start',
                ),
                NavigationDestination(
                  icon: Icon(Icons.map_outlined),
                  label: 'Mapa',
                ),
                NavigationDestination(
                  icon: Icon(Icons.explore_outlined),
                  label: 'Eksploruj',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  label: 'Profil',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExploreTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ExploreTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: const Color(0xFF1A2420),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, size: 28, color: const Color(0xFF9BB89A)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withValues(alpha: 0.55),
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.white54),
        ],
      ),
    );
  }
}
