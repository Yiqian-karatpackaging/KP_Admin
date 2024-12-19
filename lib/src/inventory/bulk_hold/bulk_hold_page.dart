import 'package:textfield_tags/textfield_tags.dart';

import 'bulk_hold.dart';

class BulkHoldPage extends StatefulWidget {
  const BulkHoldPage({
    super.key,
  });

  @override
  State<BulkHoldPage> createState() => _CreateState();
}

class _CreateState extends State<BulkHoldPage> {
  final List<String> _lpnData = [''];
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
    return CustomScaffold(
      route: '/bulk_hold',
      title: 'Inventory / Bulk Hold',
      body: Column(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 30.w,
                child: BaseText(text: 'LPN#: ', textAlign: TextAlign.end,),
              ),
              Expanded(child: TextFieldTags<String>(
                textfieldTagsController: _stringTagController,
                textSeparators: const [' ', ','],
                letterCase: LetterCase.normal,
                inputFieldBuilder: (context, inputFieldValues) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
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
                        hintText:
                        inputFieldValues.tags.isNotEmpty ? '' : "Enter LPN...",
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
                                      color: Color.fromARGB(255, 74, 137, 92),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          child: Text(
                                            '#$tag',
                                            style: const TextStyle(
                                                color: Colors.white),
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
                                                255, 233, 233, 233),
                                          ),
                                          onTap: () {
                                            inputFieldValues
                                                .onTagRemoved(tag);
                                          },
                                        )
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
                    ),
                  );
                },
              ),),
            ],
          ),
          SizedBox(height: 5.w),
          SearchDropdownWidget(title: 'Hold Status:', titleWidth: 30, onChanged: () {}),
          SizedBox(height: 5.w),
          SearchTextFieldWidget(
            title: 'Memo:',
            titleWidth: 30,
            textWidth: 100,
            moreLine: true,
          ),
          SizedBox(height: 10.w),
          BaseText(
            text: 'Save',
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
