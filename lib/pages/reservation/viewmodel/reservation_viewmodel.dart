import 'dart:async';
import 'package:new_ui_kit/base/viewmodel/base_view_model.dart';
import 'package:new_ui_kit/pages/reservation/reservation_service.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class ReservationViewModel extends BaseViewModel {
  final ReservationService service;

  ReservationViewModel({required this.service});

  String selectedDate = '';
  String dateCount = '';
  String range = '';
  String rangeCount = '';

  @override
  FutureOr<void> init() async {}

  String _onChangedDropDownVal = "";

  final List<String> _guestCount = <String>['One Guest', 'Two Guest', 'Three Guest', 'Four Guest'];
  bool _showCalender = false;

  //getters
  String get onChangedDropDownVal => _onChangedDropDownVal;
  String get dropdownValue => _dropdownValue!;
  List<String> get guestCount => _guestCount;
  late String? _dropdownValue = guestCount.first;
  bool get showCalender => _showCalender;

  //setters
  set onChangedDropDownVal(String value) {
    _onChangedDropDownVal = value;
    reloadState();
  }

  set dropdownValue(String value) {
    _dropdownValue = value;
    reloadState();
  }

  set showCalender(bool value) {
    _showCalender = value;
    reloadState();
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs dateRangePickerSelectionChanged) {
    if (dateRangePickerSelectionChanged.value is PickerDateRange) {
      range = '${DateFormat('dd/MM/yyyy').format(dateRangePickerSelectionChanged.value.startDate)} -'
          // ignore: lines_longer_than_80_chars
          ' ${DateFormat('dd/MM/yyyy').format(dateRangePickerSelectionChanged.value.endDate ?? dateRangePickerSelectionChanged.value.startDate)}';
    } else if (dateRangePickerSelectionChanged.value is DateTime) {
      selectedDate = dateRangePickerSelectionChanged.value.toString();
    } else if (dateRangePickerSelectionChanged.value is List<DateTime>) {
      dateCount = dateRangePickerSelectionChanged.value.length.toString();
    } else {
      rangeCount = dateRangePickerSelectionChanged.value.length.toString();
    }
    reloadState();
  }
}
