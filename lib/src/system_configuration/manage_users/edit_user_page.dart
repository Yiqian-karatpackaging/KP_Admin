import 'manage_users.dart';

class EditUserPage extends StatefulWidget {

  const EditUserPage({
    super.key,
  });

  @override
  State<EditUserPage> createState() => _CreateState();
}

class _CreateState extends State<EditUserPage> {

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
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: const BaseAppBar(
        titleText: 'Edit User',
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchTextFieldWidget(title: 'Login Name', textWidth: 100,),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Email', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchCalendarTextFieldWidget(title: 'Date Active', textFieldWidth: 100, onChanged: (){},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchCalendarTextFieldWidget(title: 'Date Inactive', textFieldWidth: 100, onChanged: (){},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'New Password', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Confirm New Password', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchDropdownWidget(title: 'Startup Page', hintText: 'Select', textFieldWidth: 100, onChanged: () {},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchDropdownWidget(title: 'Label Printer', hintText: 'Select', textFieldWidth: 100, onChanged: () {},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchDropdownWidget(title: 'Role Group', hintText: 'Select', textFieldWidth: 100, onChanged: () {},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchDropdownWidget(title: 'Select Options', hintText: 'Select', textFieldWidth: 100, onChanged: () {},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchDropdownWidget(title: 'Dept Name', hintText: 'Select', textFieldWidth: 100, onChanged: () {},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'NS Sales Rep Name', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Supervisor', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Employee Code', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchDropdownWidget(title: 'Theme', hintText: 'Select', textFieldWidth: 100, onChanged: () {},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchDropdownWidget(title: 'Shift', hintText: 'Select', textFieldWidth: 100, onChanged: () {},),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Freightview User Name', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Freightview Password', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Freightview Client lD', textWidth: 100,),),
            Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Freightview Client Secret', textWidth: 100,),),
            // Padding(padding: EdgeInsets.only(top: 10), child: Row(
            //   children: [
            //     BaseText(text: 'avatar'),
            //
            //   ],
            // ),),
        Padding(padding: EdgeInsets.only(top: 10), child: Row(
              children: [
                SearchButtonWidget(title: 'Cancel', onTap: () {}),
                SearchButtonWidget(title: 'Save', onTap: () {}),
              ],
            ))
          ],
        ),
      ),
    );
  }
}