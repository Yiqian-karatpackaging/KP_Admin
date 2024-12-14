import 'package:kp_admin/src/system_configuration/manage_users/manage_users.dart';

class HeadWidget extends StatefulWidget {

  final Function callBack;

  const HeadWidget(this.callBack, {
    super.key,
  });

  @override
  State<HeadWidget> createState() => _CreateState();
}

class _CreateState extends State<HeadWidget> {

  bool _showFilter = false;

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
    return Column(
      children: [
        Visibility(
          visible: _showFilter,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SearchDropdownWidget(
                      title: 'WH:',
                      onChanged: (value) {},
                    ),
                    SearchDropdownWidget(
                      title: 'Role:',
                      onChanged: (value) {},
                    ),
                    SearchDropdownWidget(
                      title: 'Dept Name:',
                      onChanged: (value) {},
                    ),
                    // SearchDropdownWidget(
                    //   title: 'User Status:',
                    //   onChanged: (value) {},
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SearchTextFieldWidget(
                      title: 'Login Name:',
                      onChanged: (value) {},
                    ),
                    SearchTextFieldWidget(
                      title: 'Employee Code:',
                      onChanged: (value) {},
                    ),
                    SearchTextFieldWidget(
                      title: 'Supervisor:',
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SearchCheckBoxWidget(
                      title: 'Inventory Counter Switch:',
                      onChanged: (value) {},
                    ),
                    SearchCheckBoxWidget(
                      title: 'Employee Code is Empty:',
                      onChanged: (value) {},
                    ),
                    SearchCheckBoxWidget(
                      title: 'Temp:',
                      onChanged: (value) {},
                    ),
                    SearchCheckBoxWidget(
                      title: 'Multiple Roles:',
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 5.w,),
                child: Row(
                  children: [
                    SearchButtonWidget(title: 'Search', onTap: () => widget.callBack('search')),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.w,
            bottom: 5.w,
            top: 5.w,
          ),
          child: Row(
            children: [
              SearchButtonWidget(title: 'Filters', onTap: () {
                setState(() {
                  _showFilter = !_showFilter;
                });
              }),
              SearchButtonWidget(title: 'Excel', onTap: () => widget.callBack('excel')),
              SearchButtonWidget(title: 'CSV', onTap: () => widget.callBack('csv')),
              SearchButtonWidget(title: 'PDF', onTap: () => widget.callBack('pdf')),
              SearchButtonWidget(title: 'Get Users Template', onTap: () => widget.callBack('usersTemplate')),
              SearchButtonWidget(title: 'Upload Template', onTap: () => widget.callBack('uploadTemplate')),
              SearchButtonWidget(title: 'Bulk Upload Profile Pic', onTap: () => widget.callBack('uploadProfilePic')),
            ],
          ),
        ),
      ],
    );
  }
}
