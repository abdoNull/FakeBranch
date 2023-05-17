import 'package:dom_sys/widgets/custom_appbar.dart';
import 'package:dom_sys/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(context: context, title: "Message"),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.5, // Set width to 60% of the screen width
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search for Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFFC5D0E6)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            ...List.generate(
              20,
              (index) => buildMessageTile(
                context,
                avatar: 'assets/avatar1.png',
                fullName: 'John Doe',
                time: '10:30 AM',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMessageTile(BuildContext context,
      {required String avatar,
      required String fullName,
      required String time}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ChatScreen(
              avatar: '',
              fullName: '',
            ),
          ),
        );
      },
      child: ListTile(
        leading: const CircleAvatar(
            // backgroundImage: AssetImage(avatar),
            ),
        subtitle: const Text("Doctor i have been ex.."),
        title: Text(fullName),
        trailing: Text(time),
      ),
    );
  }
}
