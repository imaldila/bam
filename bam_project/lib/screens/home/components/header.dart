import 'package:bam_project/constants.dart';
import 'package:flutter/material.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      color: Colors.white,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi !",
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                "Aldila Nurhadiputra",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.black54),
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:
                AssetImage("assets/images/image_profile.jpg"),
          )
        ],
      ),
    );
  }
}

// class HeaderWithSearchBox extends StatelessWidget {
//   const HeaderWithSearchBox({
//     Key? key,
//     required this.size,
//   }) : super(key: key);

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size.height * 0.2,
//       child: Stack(
//         children: [
//           Container(
//             padding: EdgeInsets.only(
//               left: kDefaultPadding,
//               right: kDefaultPadding,
//               bottom: 36 + kDefaultPadding,
//             ),
//             height: size.height * 0.2 - 27,
//             decoration: BoxDecoration(
//               color: bgColor,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(36),
//                 bottomRight: Radius.circular(36),
//               ),
//             ),
//             child: Row(
//               children: [
//                 Text(
//                   "Hi Aldila",
//                   style: Theme.of(context).textTheme.headline5!.copyWith(
//                       color: kPrimaryColor, fontWeight: FontWeight.bold),
//                 ),
//                 Spacer(),
//                 CircleAvatar(
//                   backgroundImage: AssetImage('assets/images/image_profile.jpg'),
//                 )
//               ],
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 alignment: Alignment.center,
//                 margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                 padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                 height: 54,
//                 decoration: BoxDecoration(
//                   color: bgColor,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                       offset: Offset(0, 10),
//                       blurRadius: 50,
//                       color: kPrimaryColor.withOpacity(0.23),
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Search",
//                           hintStyle:
//                               TextStyle(color: kPrimaryColor.withOpacity(0.5)),
//                           enabledBorder: InputBorder.none,
//                           focusedBorder: InputBorder.none,
//                           //suffixIcon: Icon(Icons.search),
//                         ),
//                       ),
//                     ),
//                     Icon(
//                       Icons.search,
//                       color: kPrimaryColor,
//                     )
//                   ],
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }
