# Lexiverse

Lexiverse is an immersive language learning app that transforms photos into lessons powered by Google Gemini. It offers a unique and engaging way to learn languages through real-world imagery and interactive conversations.

## Features

- **Photo-based Learning**: Take a photo of any scene, and Lexiverse will generate a comprehensive language lesson tailored to its content.
- **Vocabulary Extraction**: The app identifies key vocabulary from the image, providing context and usage.
- **Detailed Descriptions**: Get comprehensive descriptions of the scenes in your photos.
- **Conversation Starters**: Engage in meaningful conversations based on the photo's content.
- **Grammar Insights**: Learn relevant grammar points related to the scene.
- **Interactive Conversations**: Practice with Gemini as your language partner, receiving translations, grammar corrections, and helpful tips.
- **Mini-exercises**: Reinforce your learning with interactive games and exercises.
- **Multi-language Support**: Learn a wide range of languages using your native tongue.
- **Adaptive Difficulty**: Lessons adjust based on your fluency level, from beginner to advanced.
- **Customizable Learning**: Align your lessons with specific purposes or goals.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- An IDE (e.g. Android Studio, VS Code)
- A Google Gemini API key

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/samir97/lexiverse.git
   ```

2. Navigate to the project directory:
   ```
   cd lexiverse
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Add your Gemini API key:
   Open `lib/main.dart` and replace `'YOUR_GEMINI_API_KEY'` with your actual Gemini API key:
   ```dart
   const apiKey = 'YOUR_ACTUAL_GEMINI_API_KEY';
   ```

5. Run the app:
   ```
   flutter run
   ```
