class CheckInStatsResponseModel {
  String? status;
  dynamic? totalCheckedIn;
  dynamic? totalCheckedOut;
  List<RegistrationItems>? registrationItems;

  CheckInStatsResponseModel(
      {this.status,
        this.totalCheckedIn,
        this.totalCheckedOut,
        this.registrationItems});

  CheckInStatsResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalCheckedIn = json['totalCheckedIn'];
    totalCheckedOut = json['totalCheckedOut'];
    if (json['registrationItems'] != null) {
      registrationItems = <RegistrationItems>[];
      json['registrationItems'].forEach((v) {
        registrationItems!.add(new RegistrationItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalCheckedIn'] = this.totalCheckedIn;
    data['totalCheckedOut'] = this.totalCheckedOut;
    if (this.registrationItems != null) {
      data['registrationItems'] =
          this.registrationItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RegistrationItems {
  dynamic? eventFeeID;
  String? customFeeName;
  dynamic? checkedIn;
  dynamic? checkedOut;
  dynamic? redeemed;

  RegistrationItems(
      {this.eventFeeID,
        this.customFeeName,
        this.checkedIn,
        this.checkedOut,
        this.redeemed});

  RegistrationItems.fromJson(Map<String, dynamic> json) {
    eventFeeID = json['eventFeeID'];
    customFeeName = json['customFeeName'];
    checkedIn = json['checkedIn'];
    checkedOut = json['checkedOut'];
    redeemed = json['redeemed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventFeeID'] = this.eventFeeID;
    data['customFeeName'] = this.customFeeName;
    data['checkedIn'] = this.checkedIn;
    data['checkedOut'] = this.checkedOut;
    data['redeemed'] = this.redeemed;
    return data;
  }
}
