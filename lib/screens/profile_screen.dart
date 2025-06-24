import 'package:flutter/material.dart';
import 'package:finx_flutter/theme/app_colors.dart'; // ← Replace with your actual app name

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0f1115),
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Avatar with violet ring
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.avatarRing, width: 3),
              ),
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFF1c1f26),
                child: Icon(Icons.person, size: 48, color: Colors.white54),
              ),
            ),

            const SizedBox(height: 16),
            const Text(
              "John Doe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Software Engineer",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 32),
            _infoRow(label: "Email", value: "john@doe.com"),
            _infoRow(label: "Phone", value: "8123456789"),
            _infoRow(label: "Date of Birth", value: "01/01/2000"),
            const Spacer(),

            // Log Out button with accent color
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accentColor,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => Navigator.pushReplacementNamed(c, '/login'),
              child: const Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            "$label:",
            style: const TextStyle(color: Colors.white54, fontSize: 14),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
