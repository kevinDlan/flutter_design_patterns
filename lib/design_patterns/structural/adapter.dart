import 'dart:convert';

class PostApiOne {
  String getYoutubePost() {
    return '''
    [
      {
        "title":"Automatic code genarate with flutter",
        "description":"Code generation"
      },
      {
        "title":"AI is here",
        "description":"AI anouncement"
      }
    ]
    ''';
  }
}

class PostApiTwo {
  String getMediumPost() {
    return '''
      [
        {
          "header":"Api Development",
          "bio":"Api Development requirement and other "
        },
        {
          "header":"Flutter App test Driven",
          "bio":"All About writting test in flutter"
        }
      ]
    ''';
  }
}

abstract class PostApi {
  List<Post> getPost();
}

class Post {
  final String title;
  final String bio;

  Post({required this.title, required this.bio});

  @override
  String toString() {
    return "{'title':$title, 'bio':$bio}";
  }
}

// Adapters

class PostApiOneAdapter implements PostApi {
  final api = PostApiOne();
  @override
  List<Post> getPost() {
    final data = jsonDecode(api.getYoutubePost()) as List;

    return data
        .map((e) => Post(title: e['title'], bio: e['description']))
        .toList();
  }
}

class PostApiTwoAdapter implements PostApi {
  final api = PostApiTwo();

  @override
  List<Post> getPost() {
    final data = jsonDecode(api.getMediumPost()) as List;

    return data.map((e) => Post(title: e['header'], bio: e['bio'])).toList();
  }
}

class PostApiAdaptable implements PostApi {
  final PostApiOneAdapter postApiOneAdapter = PostApiOneAdapter();
  final PostApiTwoAdapter postApiTwoAdapter = PostApiTwoAdapter();

  @override
  List<Post> getPost() {
    return [...postApiOneAdapter.getPost(), ...postApiTwoAdapter.getPost()];
  }

  void showPost() {
    // print(getPost());
    getPost().forEach((element) {
      print(element.toString());
    });
  }
}
