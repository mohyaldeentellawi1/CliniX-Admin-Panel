import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/colors.dart';
import 'category_select.dart';
import 'custom_dialog_button.dart';

class ColumnEvent extends StatelessWidget {
  const ColumnEvent({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
      child: Column(
        children: [
          NewEvent(width: width),
          Container(height: 20),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text("click in the calendar To Select Event")),
          Container(height: 10),
          EventList(
            backgorund: AppColor.darkGreen.withOpacity(.39),
            textanddot: AppColor.darkGreen,
            text: 'New Event Planning',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkblue.withOpacity(0.39),
            textanddot: AppColor.darkblue,
            text: 'Meeting',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkyellow.withOpacity(.39),
            textanddot: AppColor.darkyellow,
            text: 'Generating Report',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkred.withOpacity(.39),
            textanddot: AppColor.darkred,
            text: 'Create New theme',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkblack.withOpacity(.39),
            textanddot: AppColor.darkblack,
            text: 'Team Meeting',
          ),
        ],
      ),
    );
  }
}

class EventList extends StatelessWidget {
  final Color backgorund;
  final Color textanddot;
  final String text;

  const EventList({
    super.key,
    required this.backgorund,
    required this.textanddot,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgorund,
      height: 30,
      child: Row(
        children: [
          Container(width: 15),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: textanddot,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13,
                overflow: TextOverflow.clip,
                color: textanddot,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewEvent extends StatelessWidget {
  const NewEvent({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: width,
      child: ElevatedButton(
          onPressed: () {
            createNewEventBox(context);
          },
          style: ElevatedButton.styleFrom(
            // shadowColor: AppColor.lightdark,
            // elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
            backgroundColor: AppColor.selecteColor,
          ),
          child: const Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.add_circle_outline_rounded,
                    color: AppColor.mainbackground,
                    size: 15,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Create New Event",
                    style: TextStyle(
                      overflow: TextOverflow.clip,
                      fontSize: 13,
                      color: AppColor.mainbackground,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Future<dynamic> createNewEventBox(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            elevation: 0,
            content: width > 365
                ? BigScreenContent(width: width)
                : SmallScreenContent(width: width));
      },
    );
  }
}

class BigScreenContent extends StatelessWidget {
  const BigScreenContent({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width > 400 ? 600 : 10,
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                const Text(
                  "Add Event",
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Spacer(),
                InkResponse(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: AppColor.black,
                  ),
                ),
              ],
            ),
            Container(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Event Name",
                style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              // child: BasicTextFieldonly(
              //   hintText: "Insert Event Name",
              //   initialValue: "",
              //   obscure: false,
              // ),
            ),
            Container(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Category",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColor.black,
                    fontSize: 15),
              ),
            ),
            const CategorySelect(),
            Container(height: 15),
            width > 500
                ? Row(
                    children: [
                      CustomDialogButton(
                          width: width,
                          onPressed: () {},
                          shadowColor: AppColor.darkred,
                          backgroundColor: AppColor.darkred,
                          buttonName: 'Delete',
                          textColor: AppColor.mainbackground),
                      const Spacer(),
                      CustomDialogButton(
                          width: width,
                          onPressed: () {},
                          shadowColor: const Color.fromARGB(255, 216, 216, 222),
                          backgroundColor:
                              const Color.fromARGB(255, 216, 216, 222),
                          buttonName: 'Close',
                          textColor: AppColor.black),
                      Container(width: 5),
                      CustomDialogButton(
                          width: width,
                          onPressed: () {
                            //                   _events?.appointments!.add(app);
                            // _events?.notifyListeners(
                            //     CalendarDataSourceAction.add, <Appointment>[app]);
                          },
                          shadowColor: AppColor.background,
                          backgroundColor: AppColor.background,
                          buttonName: 'Save',
                          textColor: AppColor.mainbackground),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: CustomDialogButton(
                              width: width,
                              onPressed: () {},
                              shadowColor: AppColor.darkred,
                              backgroundColor: AppColor.darkred,
                              buttonName: 'Delete',
                              textColor: AppColor.mainbackground)),
                      const Spacer(flex: 1),
                      Expanded(
                          flex: 2,
                          child: CustomDialogButton(
                              width: width,
                              onPressed: () {},
                              shadowColor:
                                  const Color.fromARGB(255, 216, 216, 222),
                              backgroundColor:
                                  const Color.fromARGB(255, 216, 216, 222),
                              buttonName: 'Close',
                              textColor: AppColor.black)),
                      Container(width: 5),
                      Expanded(
                          flex: 2,
                          child: CustomDialogButton(
                              width: width,
                              onPressed: () {
                                //                   _events?.appointments!.add(app);
                                // _events?.notifyListeners(
                                //     CalendarDataSourceAction.add, <Appointment>[app]);
                              },
                              shadowColor: AppColor.background,
                              backgroundColor: AppColor.background,
                              buttonName: 'Save',
                              textColor: AppColor.mainbackground)),
                    ],
                  ),
          ],
        ));
  }
}

class SmallScreenContent extends StatelessWidget {
  const SmallScreenContent({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width > 400 ? 600 : 10,
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: [
              const Text(
                "Add Event",
                style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Spacer(),
              InkResponse(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: AppColor.black,
                ),
              ),
            ],
          ),
          Container(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Event Name",
              style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            // child: BasicTextFieldonly(
            //   hintText: "Insert Event Name",
            //   initialValue: "",
            //   obscure: false,
            // ),
          ),
          Container(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Category",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColor.black,
                  fontSize: 15),
            ),
          ),
          const CategorySelect(),
          Container(height: 15),
          Row(
            children: [
              CustomDialogButton(
                  width: width,
                  onPressed: () {},
                  shadowColor: AppColor.darkred,
                  backgroundColor: AppColor.darkred,
                  buttonName: 'Delete',
                  textColor: AppColor.mainbackground),
              const Spacer(),
              Column(
                children: [
                  CustomDialogButton(
                      width: width,
                      onPressed: () {},
                      shadowColor: const Color.fromARGB(255, 216, 216, 222),
                      backgroundColor: const Color.fromARGB(255, 216, 216, 222),
                      buttonName: 'Close',
                      textColor: AppColor.black),
                  CustomDialogButton(
                      width: width,
                      onPressed: () {
                        //                   _events?.appointments!.add(app);
                        // _events?.notifyListeners(
                        //     CalendarDataSourceAction.add, <Appointment>[app]);
                      },
                      shadowColor: AppColor.background,
                      backgroundColor: AppColor.background,
                      buttonName: 'Save',
                      textColor: AppColor.mainbackground),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CalendarPhoto extends StatelessWidget {
  const CalendarPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/svg/calendar.svg");
  }
}
