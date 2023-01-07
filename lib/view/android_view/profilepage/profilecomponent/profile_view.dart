import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/view_model/apihandler/auth_handler.dart';
import 'package:monarch_mart/view_model/simplehadler/profile_view.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Appcolors.primaryColor,
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          //IMAGE view
          const HorizontalSpacer(width: 10),
          const CircleAvatar(
            radius: 25,
          ),
          const HorizontalSpacer(width: 10),
          Expanded(child: Consumer(
            builder: (context, ref, child) {
              

              final profiledata = ref.watch(profileProvider);
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profiledata[0].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  Text(
                    profiledata[1].toString(),
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              );
            },
          )),

          const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.edit,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
