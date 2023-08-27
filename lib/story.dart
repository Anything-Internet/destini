/*
The Story class is a blueprint for a Story object.
It has 3 properties which are all final because we don't want them to change after the Story has been created.
*/

class Story {
  final String _storyTitle;
  final String _choice1;
  final String _choice2;
  final int _next1;
  final int _next2;

  Story({
    required String storyTitle,
    required String choice1,
    required String choice2,
    required int next1,
    required int next2,
  })  : _choice2 = choice2,
        _choice1 = choice1,
        _next1 = next1,
        _next2 = next2,
        _storyTitle = storyTitle;

  get storyTitle => _storyTitle;
  get choice1 => _choice1;
  get choice2 => _choice2;
  get next1 => _next1;
  get next2 => _next2;
}
