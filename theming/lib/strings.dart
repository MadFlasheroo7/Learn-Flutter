// String resource to manage definations of 'Material Components'
// Source: https://m3.material.io/components/all-buttons

class Strings {
  final String elevatedButton = '''
    Elevated buttons are essentially filled buttons with 
    a lighter background color and a shadow. To prevent shadow creep,
    only use them when absolutely necessary, such as 
    when the button requires visual separation from a patterned background.''';

  final String filledButton = '''
    The filled button's contrasting surface color makes
    it the most prominent button after the FAB. It's used for
    final or unblocking actions in a flow.''';

  final String filledTonalButton = '''
    Filled tonal buttons have a lighter background 
    color and darker label color, making them less visually prominent than a regular,
    filled button. They're still used for final or unblocking actions in a flow,
    but do so with less emphasis.''';

  final String outlinedButton = '''
    Use an outlined button for actions that need attention but aren't the primary action,
    such as See all or Add to cart. This is also the button to use for giving 
    someone the opportunity to change their mind or escape a flow.''';

  final String textButton = '''
    Text buttons have less visual prominence, so should be used for low emphasis actions,
    such as an alternative option.''';

  final String iconButton = '''
    The most compact and subtle type of button, 
    icon buttons are used for optional supplementary actions such as “Bookmark” or “Star.”''';

  final String segmentedButton = "Segmented buttons have more visual prominence than a single icon button.";

  final String floatingActionButton = '''
    The FAB remains the default component for a screen's primary action. 
    It comes in three sizes: small FAB, FAB, and large FAB.''';

  final String extendedFloatingActionButton = '''
    The extended FAB's wider format and text label give it more visual prominence than a  FAB. 
    It's often used on larger screens where a FAB would seem too small.''';
}
