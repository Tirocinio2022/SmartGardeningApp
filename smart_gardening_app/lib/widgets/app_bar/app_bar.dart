import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_gardening_app/screens/pages.dart';
import 'package:smart_gardening_app/utils/utils.dart';
import 'package:smart_gardening_app/widgets/language_picker/language_picker.dart';

import '../../constants/strings_constants.dart';

//TODO: rinominare in CustomAppBarWidget?
//TODO: far passare il titolo come parametro?
//TODO: passare come parametro un boolean per le icone

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key, this.title = kAppName, this.hasIcons = true}) : super(key: key);

  final String title;
  final bool hasIcons; //TODO: remove

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme, //TODO: remove?
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(title), //TODO: spostare il titolo
      titleTextStyle: TextStyle(
        color: Colors.grey[800], //TODO: black?
        fontSize: 36, //TODO: più piccolo?
      ),
      /*iconTheme: const IconThemeData( //TODO: remove?
        color: Colors.black,
      ),*/
      actions: [
        LanguagePickerWidget(),
        SizedBox(width: 12), //TODO: remove?
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        /*IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),*/
        IconButton(
          icon: const Icon(Icons.camera), //TODO: update icon
          onPressed: () => Utils.navigateToPage(context: context, page: Pages.scan),
        ),
      ],
      /*bottom: PreferredSize( //TODO: uncomment
        child: Container(
          color: Colors.green[200], //TODO: transparent o grigino
          /*child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
          ),*/
        ),
        preferredSize: Size.fromHeight(40.0), //TODO: da aggiornare
      ),*/
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  //TODO: remove
  IconButton? _buildIconButton({VoidCallback? onPressed, required IconData icon}){
    return hasIcons ? IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    ) : null;
  }
}