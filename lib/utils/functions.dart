import 'package:flutter/material.dart';
import 'package:flutter_note_objectbox/views/widget/add_note_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class FunctionsManager {
  static void toast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  // static String setUnitOfMeasure(num quantity) {
  //   if (quantity == 1) {
  //     return LocalizationRes.onePiece;
  //   } else if (quantity == 2) {
  //     return LocalizationRes.twoPieces;
  //   } else if (quantity > 2 && quantity < 11) {
  //     return LocalizationRes.pieces;
  //   } else {
  //     return LocalizationRes.onePiece;
  //   }
  // }

  static ColorScheme getColorSchema(BuildContext context) {
    return Theme.of(context).colorScheme;
  }

  // static String getCurrentDate() {
  //   var now = DateTime.now();
  //   var formatter = DateFormat('yyyy-MM-dd');
  //   String formattedDate = formatter.format(now);
  //   return formattedDate;
  // }

  static void showAddEntityBottomSheet(
    BuildContext context,
    Function() onSaveClicked,
    TextEditingController titleTextEditingController,
    TextEditingController bodyTextEditingController,
  ) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddNoteWidget(
              titleTextEditingController: titleTextEditingController,
              bodyTextEditingController: bodyTextEditingController,
              function: onSaveClicked,
            ),
          ),
        );
      },
    );
  }

// static Future<void> showLogoutDialog(BuildContext context) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: const Text(
//           LocalizationRes.logoutConfirmationMessage,
//         ),
//         actions: <Widget>[
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             child: const Text(LocalizationRes.dismiss),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             child: const Text(LocalizationRes.logout),
//             onPressed: () {
//               SharedPreferencesManager.removeUserData().then(
//                 (value) {
//                   if (value) {
//                     db.database.delete('table');
//                     SharedPreferencesManager.removeUserData().then(
//                       (v) {
//                         if (v) {
//                           MainLayoutCubit.get(context)
//                               .changeBottomView(index: 0);
//                           GoRouter.of(context).go(AppRouter.kLoginView);
//                         }
//                       },
//                     );
//                   }
//                 },
//               );
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
//

//  static Future<void> removeFromCartAlertDialog(BuildContext context,
// Function() onActionFunction) async {
//    return showDialog<void>(
//      context: context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          content: Text('هل تريد حذف "' '${model.name}" من العربة'),
//          actions: <Widget>[
//            TextButton(
//              style: TextButton.styleFrom(
//                textStyle: Theme.of(context).textTheme.labelLarge,
//              ),
//              child: const Text(LocalizationRes.dismiss),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//            TextButton(
//              style: TextButton.styleFrom(
//                textStyle: Theme.of(context).textTheme.labelLarge,
//              ),
//              child: const Text(
//                  LocalizationRes.removeCartConfirmationButtonMessage),
//              onPressed: () {
//                onActionFunction();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }

// static Future<void> unAuthorizedUserErrorAlertDialog(
//     BuildContext context) async {
//   return showDialog<void>(
//     context: context,
//     barrierDismissible: true,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: const Text(LocalizationRes.unknownError),
//         actions: <Widget>[
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             child: const Text(LocalizationRes.logout),
//             onPressed: () {
//               GoRouter.of(context).go(AppRouter.kLoginView);
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }

// static Future<void> removeFromFavoriteAlertDialog(BuildContext context,
//     ProductModel model, Function() onActionFunction) async {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: Text('هل تريد حذف "' '${model.name}" من المنتجات المفضلة ؟'),
//         actions: <Widget>[
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             child: const Text(LocalizationRes.dismiss),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             child: const Text(
//                 LocalizationRes.removeFavoriteConfirmationButtonMessage),
//             onPressed: () {
//               onActionFunction();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
}
