import 'package:bookly_app/Features/home/controller/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:bookly_app/core/utils/widgets/custom_toast_bar.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsActions extends StatelessWidget {
  const DetailsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Free',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Free Preview',
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            onPressed: () async {
              var bookModel =
                  BlocProvider.of<SimilarBooksCubit>(context).bookDetails;
              Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                customToastBar(
                  context: context,
                  message: 'Can\'t open this link $url',
                  icon: Icons.error,
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                  postion: DelightSnackbarPosition.bottom,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
