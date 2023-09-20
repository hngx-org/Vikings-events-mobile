import 'package:event_app/ui/bottomsheet/notice/notice_viewmodel.dart';
import 'package:flutter/material.dart';


import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class NoticeSheet extends StackedView<NoticeSheetModel> {
  final Function(SheetResponse)? completer;
  final SheetRequest request;
  const NoticeSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NoticeSheetModel viewModel,
    Widget? child,
  ) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Scaffold(
       body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              request.title!,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 10,),
            Text(
              request.description!,
              style:textTheme.bodySmall,
              maxLines: 3,
              softWrap: true,
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  @override
  NoticeSheetModel viewModelBuilder(BuildContext context) => NoticeSheetModel();
}