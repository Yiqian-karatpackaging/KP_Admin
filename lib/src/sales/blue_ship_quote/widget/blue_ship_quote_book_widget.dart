import 'package:textfield_tags/textfield_tags.dart';

import '../blue_ship_quote.dart';

class BlueShipQuoteBookWidget extends StatefulWidget {
  const BlueShipQuoteBookWidget({
    super.key,
  });

  @override
  State<BlueShipQuoteBookWidget> createState() => _CreateState();
}

class _CreateState extends State<BlueShipQuoteBookWidget> {
  final List<String> _soData = [''];
  final _stringTagController = StringTagController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SearchDropdownWidget(title: 'WH:', titleWidth: 10, onChanged: (){}),
              SearchDropdownWidget(title: 'LTL/TL:', titleWidth: 40, onChanged: (){}),
            ],
          ),
          const SizedBox(height: 10),
          TextFieldTags<String>(
            textfieldTagsController: _stringTagController,
            letterCase: LetterCase.normal,
            inputFieldBuilder: (context, inputFieldValues) {
              return TextField(
                onTap: () {
                  _stringTagController.getFocusNode?.requestFocus();
                },
                controller: inputFieldValues.textEditingController,
                focusNode: inputFieldValues.focusNode,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 74, 137, 92),
                      width: 3.0,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 74, 137, 92),
                      width: 3.0,
                    ),
                  ),
                  helperStyle: const TextStyle(
                    color: Color.fromARGB(255, 74, 137, 92),
                  ),
                  hintText: inputFieldValues.tags.isNotEmpty
                      ? ''
                      : "Enter SO#/TO#/RA#/PO#...",
                  errorText: inputFieldValues.error,
                  prefixIcon: inputFieldValues.tags.isNotEmpty
                      ? SingleChildScrollView(
                    controller: inputFieldValues.tagScrollController,
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 8,
                      ),
                      child: Wrap(
                          runSpacing: 4.0,
                          spacing: 4.0,
                          children:
                          inputFieldValues.tags.map((String tag) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                                color: Color.fromARGB(
                                  255,
                                  74,
                                  137,
                                  92,
                                ),
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 5.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    child: Text(
                                      '#$tag',
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    onTap: () {
                                      //print("$tag selected");
                                    },
                                  ),
                                  const SizedBox(width: 4.0),
                                  InkWell(
                                    child: const Icon(
                                      Icons.cancel,
                                      size: 14.0,
                                      color: Color.fromARGB(
                                        255,
                                        233,
                                        233,
                                        233,
                                      ),
                                    ),
                                    onTap: () {
                                      inputFieldValues.onTagRemoved(tag);
                                    },
                                  ),
                                ],
                              ),
                            );
                          }).toList()),
                    ),
                  )
                      : null,
                ),
                onChanged: inputFieldValues.onTagChanged,
                onSubmitted: inputFieldValues.onTagSubmitted,
              );
            },
          ),
          const SizedBox(height: 10),
          const BaseText(
            text: 'Search',
            bgColor: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            borderRadius: 2,
          ),
        ],
      ),
    );
  }
}
