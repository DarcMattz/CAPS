import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/button_settings.dart';

class SettingsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20),
                Text(
                  'SETTINGS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButtonWidget(
                  icon: Icons.volume_up,
                  color: Colors.blue,
                  label: 'Sound',
                ),
                IconButtonWidget(
                  icon: Icons.person,
                  color: Colors.green,
                  label: 'Profile',
                ),
                IconButtonWidget(
                  icon: Icons.bar_chart,
                  color: Colors.purple,
                  label: 'Stats',
                ),
                // IconButtonWidget(
                //   icon: Icons.school,
                //   color: Colors.orange,
                //   label: 'Nursery',
                // ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(hintText: "Enter your Username"),
              textAlign: TextAlign.center,
            ),
            Text(
              'username',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.save, color: Colors.black54),
                SizedBox(width: 8),
                Text(
                  'Save Your Progress',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              onPressed: () {},
              child: Text(
                'Register this Account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
