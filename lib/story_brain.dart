import 'story.dart';
import 'story_data_1.dart';

class StoryBrain {
  final List<Story> _story = storyData;
  late int endOfStory;
  late int _storyNumber;

  StoryBrain() {
    endOfStory = _story.length;
    restart();
  }

  get story {
    return _story[_storyNumber].storyTitle;
  }

  get choice1 {
    return _story[_storyNumber].choice1;
  }

  get choice2 {
    return _story[_storyNumber].choice2;
  }

  void restart() {
    _storyNumber = 0;
  }

  void nextStory(int choiceNumber) {
    // choosing option 1 goes to next question
    // choosing option 2 goes past the next question
    // if choice1 is Restart - restart the game

    if (_story[_storyNumber].choice1 == 'Restart') {
      restart();
      return;
    }

    _storyNumber = (choiceNumber == 1) ?
    _story[_storyNumber].next1 : _story[_storyNumber].next2;
  }

  bool buttonShouldBeVisible() {
    // does button 2 have text?
    if (_story[_storyNumber].choice2 == '') {
      return false;
    } else {
      return true;
    }
  }
}
