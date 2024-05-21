import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CV'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage('https://your-image-url.com/your-photo.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Your Name',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                    TypewriterAnimatedText(
                      'Flutter Developer',
                      textStyle: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 1,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'A brief introduction about yourself...',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              const Text(
                'Work Experience',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const WorkExperienceList(),
              const SizedBox(height: 20),
              const Text(
                'Projects',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const ProjectList(),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkExperienceList extends StatelessWidget {
  const WorkExperienceList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkExperienceItem(
          companyName: 'Company A',
          position: 'Flutter Developer',
          duration: 'Jan 2020 - Present',
          description: 'Description of your role and responsibilities...',
        ),
        WorkExperienceItem(
          companyName: 'Company B',
          position: 'Mobile Developer',
          duration: 'Jan 2018 - Dec 2019',
          description: 'Description of your role and responsibilities...',
        ),
      ],
    );
  }
}

class WorkExperienceItem extends StatelessWidget {
  final String companyName;
  final String position;
  final String duration;
  final String description;

  const WorkExperienceItem({super.key, 
    required this.companyName,
    required this.position,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            companyName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            position,
            style: const TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            duration,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectItem(
          projectName: 'Project A',
          description: 'Description of the project...',
        ),
        ProjectItem(
          projectName: 'Project B',
          description: 'Description of the project...',
        ),
      ],
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String projectName;
  final String description;

  const ProjectItem({super.key, 
    required this.projectName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
