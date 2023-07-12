import '../consts/consts.dart';

Widget customTextField(
    {String? title, String? hint, bool? obscureText, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextField(
        // controller: controller,
        obscureText: obscureText!,
        decoration: InputDecoration(
          hintText: hint!,
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor),
          ),
        ),
      ),
    ],
  ).box.p16.make();
}
