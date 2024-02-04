import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:flutter/material.dart';

class LanguagesMobilScreenBody extends StatefulWidget {
  const LanguagesMobilScreenBody({super.key});

  @override
  State<LanguagesMobilScreenBody> createState() =>
      _LanguagesMobilScreenBodyState();
}

class _LanguagesMobilScreenBodyState extends State<LanguagesMobilScreenBody> {
  Map<String, bool> languages = {
    'English': true,
    'Portuguese': true,
    'Russian': true,
    'French': true,
    'Dutch': true,
    'Turkish': true,
    'Magyar': false,
    'Croatian': false,
    'Macedonian': false,
    'Hindi': false,
    'Mongolian': false,
    'Cantonese': false,
    'Kannada': false,
    'Min Nan': false,
    'Sindhi': false,
    'Uzbek': false,
    'German': false,
    'Greek': false,
    'Hungarian': false,
    'Latvian': false,
    'Polish': false,
    'Hebrew': false,
    'Romanian': false,
    'Albanian': false,
    'Korean': false,
    'Farsi': false,
    'Fula': false,
    'Maithili': false,
    'Oriya': false,
    'Sundanese': false,
    'Wu': false,
    'Italian': false,
    'Bulgarian': false,
    'Swedish': false,
    'Serbian': false,
    'Japanese': false,
    'Javanese': false,
    'Amharic': false,
    'Hakka': false,
    'Malayalam': false,
    'Pashto': false,
    'Tamil': false,
    'Yoruba': false,
    'Spanish': false,
    'Czech': false,
    'Belarusian': false,
    'Lithuanian': false,
    'Finnish': false,
    'Maltese': false,
    'Vietnamese': false,
    'Bhojpuri': false,
    'Hausa': false,
    'Mandarin': false,
    'Persian': false,
    'Telugu': false,
    'Afrikaans': false,
    'Arabic': false,
    'Slovak': false,
    'Danish': false,
    'Norwegian': false,
    'Estonian': false,
    'Bengali': false,
    'Welsh': false,
    'Burmese': false,
    'Jin': false,
    'Marathi': false,
    'Punjabi': false,
    'Ukrainian': false
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                "Languages Only add languages in which your clinic can deal with patients."),
        const SizedBox(height: 25),
        GridView.builder(
          shrinkWrap: true,
          itemCount: languages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            String key = languages.keys.elementAt(index);
            return CheckboxListTile(
              activeColor: AppColor.selecteColor,
              title: Text(key),
              value: languages[key],
              onChanged: (bool? value) {
                setState(() {
                  languages[key] = value!;
                });
              },
            );
          },
        ),
        const SizedBox(height: 10),
        CustomContainerButton(
            paddingWidth: 100,
            paddingheight: 10,
            onTap: () {},
            buttonName: 'Update')
      ],
    );
  }
}
