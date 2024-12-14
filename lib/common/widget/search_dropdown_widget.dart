import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'base_text.dart';

class SearchDropdownWidget extends StatefulWidget {

  final Function onChanged;
  final String title;
  final double titleWidth;
  final double textFieldWidth;
  final String hintText;
  final bool enableMultipleSelection;
  final bool isSearchVisible;
  final List<SelectedListItem>? data;

  const SearchDropdownWidget({
    required this.title,
    this.data,
    required this.onChanged,
    this.titleWidth = 50,
    this.textFieldWidth = 40,
    this.hintText = 'Select',
    this.enableMultipleSelection = true,
    this.isSearchVisible = true,
    super.key,
  });

  @override
  State<SearchDropdownWidget> createState() => _CreateState();
}

class _CreateState extends State<SearchDropdownWidget> {

  final TextEditingController _txtController = TextEditingController();

  String _value = '';

  bool _isOpen = false;

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

  void _showDropDown() {
    FocusScope.of(context).unfocus();
    setState(() {
      _isOpen = !_isOpen;
    });
    DropDownState(
      DropDown(
        isDismissible: true,
        isSearchVisible: widget.isSearchVisible,
        enableMultipleSelection: widget.enableMultipleSelection,
        bottomSheetTitle: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: widget.data ?? List.generate(110, (i) => SelectedListItem(name: '$i')),
        onSelected: (List<SelectedListItem> selectedList) {
          setState(() {
            _isOpen = !_isOpen;
          });
          _txtController.text = selectedList.isNotEmpty ? (widget.enableMultipleSelection ? '${selectedList.length} selected' : selectedList.first.name) : '';
          widget.onChanged(selectedList);
        },
      ),
    ).showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: widget.titleWidth.w,
          margin: EdgeInsets.only(right: 5.w),
          child: BaseText(text: widget.title, textAlign: TextAlign.end,),
        ),
        SizedBox(
          width: widget.textFieldWidth.w,
          height: 30.h,
          child: TextFormField(
            controller: _txtController,
            readOnly: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              ),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: const Color(0xFF000000).withOpacity(0.5),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(
                  color: Color(0xFF1C89FF),
                ),
              ),
              contentPadding: const EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
              suffixIcon: Icon(_isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down, size: 16,),
            ),
            style: TextStyle(
                fontSize: 4.sp,
              // color: Color(0xFF000000).withOpacity(0.5),
            ),
            onTap: () => _showDropDown(),
          ),
        ),
      ],
    );
  }
}

class DropdownWithGlobalCheckBox extends StatefulWidget {
  const DropdownWithGlobalCheckBox({super.key});

  @override
  State<StatefulWidget> createState() => _DropdownWithGlobalCheckBoxState();
}

class _DropdownWithGlobalCheckBoxState
    extends State<DropdownWithGlobalCheckBox> {
  final _infiniteScrollDropDownKey = GlobalKey<DropdownSearchState<int>>();
  final ValueNotifier<bool?> longListCheckBoxValueNotifier =
  ValueNotifier(false);
  final longList = List.generate(110, (i) => i + 1);

  bool? _getCheckBoxState() {
    var selectedItem =
        _infiniteScrollDropDownKey.currentState?.popupGetSelectedItems ?? [];
    var isAllSelected =
        _infiniteScrollDropDownKey.currentState?.popupIsAllItemSelected ??
            false;
    return selectedItem.isEmpty ? false : (isAllSelected ? true : null);
  }

  ///simulate an API call
  Future<List<int>> _getData(String filter, LoadProps? loadProps) {
    return Future.delayed(Duration(seconds: 1), () {
      var list = filter.isEmpty
          ? longList
          : longList.where((l) => l.toString().contains(filter));

      return list.skip(loadProps!.skip).take(loadProps.take).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<int>.multiSelection(
      key: _infiniteScrollDropDownKey,
      items: (f, ic) => _getData(f, ic),
      decoratorProps: const DropDownDecoratorProps(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Select',
          contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
        ),
      ),
      popupProps: PopupPropsMultiSelection.dialog(
        onItemAdded: (l, s) => longListCheckBoxValueNotifier.value = _getCheckBoxState(),
        onItemRemoved: (l, s) => longListCheckBoxValueNotifier.value = _getCheckBoxState(),
        onItemsLoaded: (value) => longListCheckBoxValueNotifier.value = _getCheckBoxState(),
        interceptCallBacks: true,
        itemClickProps: ClickProps(
          onTapUp: (v) {
            print('onTapUp');
          },
        ),
        onDismissed: () {
          print('.......');
        },
        infiniteScrollProps: InfiniteScrollProps(loadProps: LoadProps(skip: 0, take: 10)),
        showSearchBox: true,
        containerBuilder: (ctx, popupWidget) {
          return Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(2)),
            //   // gradient: LinearGradient(
            //   //   begin: Alignment.topRight,
            //   //   end: Alignment.bottomLeft,
            //   //   colors: [Color(0xF44336), Colors.blue],
            //   // ),
            // ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('All Select: '),
                      ValueListenableBuilder(
                        valueListenable: longListCheckBoxValueNotifier,
                        builder: (context, value, child) {
                          return Checkbox(
                            value: longListCheckBoxValueNotifier.value,
                            tristate: true,
                            onChanged: (bool? v) {
                              v ??= false;
                              if (v == true) {
                                _infiniteScrollDropDownKey.currentState
                                    ?.popupSelectAllItems();
                              } else if (v == false) {
                                _infiniteScrollDropDownKey.currentState
                                    ?.popupDeselectAllItems();
                              }
                              longListCheckBoxValueNotifier.value = v;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(child: popupWidget),
              ],
            ),
          );
        },
      ),
    );
  }
}