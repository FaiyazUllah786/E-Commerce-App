import '../consts/consts.dart';

Widget ourButton({onPress, color, String? title, textColor}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}
