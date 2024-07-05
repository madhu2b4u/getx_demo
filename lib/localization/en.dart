import 'translation_keys.dart' as translation;

class En {
  Map<String, String> get messages => {
    translation.title: 'Welcome to GetX Demo',
    translation.sample_snack_bar_message: 'Sample SnackBar Message using Getx',
    translation.logged_in: 'logged in as @name with email @email'
  };
}