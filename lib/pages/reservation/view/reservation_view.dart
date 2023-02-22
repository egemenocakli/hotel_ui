import 'package:flutter/material.dart';
import 'package:new_ui_kit/base/view/base_view.dart';
import 'package:new_ui_kit/constants/app_constants.dart';
import 'package:new_ui_kit/pages/reservation/reservation_service.dart';
import 'package:new_ui_kit/pages/reservation/viewmodel/reservation_viewmodel.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ReservationView extends StatefulWidget {
  const ReservationView({super.key});

  @override
  State<ReservationView> createState() => _ReservationViewState();
}

class _ReservationViewState extends State<ReservationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView<ReservationViewModel>(
          vmBuilder: (_) => ReservationViewModel(service: ReservationService()), builder: _buildScreen),
    );
  }
}

Widget _buildScreen(BuildContext context, ReservationViewModel viewModel) {
  return Scaffold(
    backgroundColor: AppColors.greys6,
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            //Color(0xFF212121),
            Color(0xFF2e2e2e),
            Color(0xFF2e2e2e),
            //Color(0xFF212121),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: AppSizes.pageStartPadding),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Select a reservation date",
                style: TextStyle(color: Colors.white),
              ),
            ),
/*
            Padding(
              padding: const EdgeInsets.only(top: AppSizes.sizeLarge),
              child: reservationCalender(context, viewModel),
            ),
            */
            dropDownGuest(viewModel),
            InkWell(
              onTap: () {
                viewModel.showCalender = !viewModel.showCalender;
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.sizeSmall, vertical: AppSizes.sizeSmall),
                decoration: BoxDecoration(borderRadius: BorderRadiusValues.borderRadius30, color: Colors.grey.shade800),
                height: context.height * 0.1 / 2,
                width: context.width * 0.3,
                child: const Text(
                  "Select Date",
                  style: TextStyle(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            viewModel.showCalender == true
                ? Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: reservationCalender(context, viewModel),
                  )
                : const SizedBox()
          ],
        ),
      ),
    ),
  );
}

Padding dropDownGuest(ReservationViewModel viewModel) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sizeSmall),
      decoration: BoxDecoration(borderRadius: BorderRadiusValues.borderRadius30, color: Colors.grey.shade800),
      //color: Colors.grey.shade800,
      child: DropdownButton<String>(
        underline: const SizedBox(),
        value: viewModel.dropdownValue,
        borderRadius: BorderRadius.circular(30),
        dropdownColor: Colors.grey.shade800,
        onChanged: (String? localVal) {
          viewModel.dropdownValue = localVal!;
        },
        items: viewModel.guestCount.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: RichText(
                text: TextSpan(children: [
              const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: AppColors.white,
                  )),
              TextSpan(text: " $value"),
            ])),
            /*
                    Row(
                      children: [
                        const Icon(Icons.person_2_outlined, color: AppColors.white),
                        Text(
                          value,
                          style: const TextStyle(color: AppColors.white),
                        )
                      ],
                    ), //Text(value),
                    */
          );
        }).toList(),
      ),
    ),
  );
}

Container reservationCalender(BuildContext context, ReservationViewModel viewModel) {
  return Container(
    //color: Colors.blue,
    decoration: BoxDecoration(
        color: AppColors.desiredDawn,
        border: Border.all(color: AppColors.greys6, width: 2, style: BorderStyle.solid),
        borderRadius: BorderRadiusValues.borderRadius30),
    height: context.height * 0.4,
    width: context.width * 0.8,
    child: Padding(
      padding: const EdgeInsets.all(AppSizes.sizeSmall),
      child: SfDateRangePicker(
        //backgroundColor: Colors.grey[800],
        rangeSelectionColor: AppColors.bGrey,
        rangeTextStyle: const TextStyle(
          color: AppColors.white,
        ),
        onSelectionChanged: viewModel.onSelectionChanged,
        selectionMode: DateRangePickerSelectionMode.range,
        enablePastDates: false,
        toggleDaySelection: true,
        confirmText: "Done",
        showTodayButton: true,
        headerHeight: 60,
        cancelText: "Cancel",
        allowViewNavigation: true,
        showActionButtons: true,
        headerStyle: DateRangePickerHeaderStyle(
          textAlign: TextAlign.left,
          textStyle: (Theme.of(context).textTheme.headlineMedium),
          /*
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    */
        ),
        selectionTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}


/*
  void onSelectionChanged(DateRangePickerSelectionChangedArgs dateRangePickerSelectionChanged) {
    setState(() {
      if (dateRangePickerSelectionChanged.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(dateRangePickerSelectionChanged.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(dateRangePickerSelectionChanged.value.endDate ?? dateRangePickerSelectionChanged.value.startDate)}';
      } else if (dateRangePickerSelectionChanged.value is DateTime) {
        _selectedDate = dateRangePickerSelectionChanged.value.toString();
      } else if (dateRangePickerSelectionChanged.value is List<DateTime>) {
        _dateCount = dateRangePickerSelectionChanged.value.length.toString();
      } else {
        _rangeCount = dateRangePickerSelectionChanged.value.length.toString();
      }
    });
  }
  */

