class AttendeeDetailsResponse {
  String? attendeeID;
  dynamic? adminReg;
  dynamic? applyProcessingFee;
  String? birthdate;
  dynamic? registrationID;
  List<CustomFields>? customFields;
  String? attendeeGUID;
  List<Company>? company;
  dynamic? couponValue;
  dynamic? finalDiscount;
  dynamic? eventID;
  String? eventGUID;
  String? title;
  List<Guests>? guests;
  String? lastUpdated;
  dynamic? profileID;
  dynamic? parentID;
  String? paymentMethod;
  String? qrCodeURL;
  String? registrationTime;
  dynamic? processingFee;
  dynamic? totalDue;
  dynamic? userID;
  String? userAddress;
  String? userCompany;
  String? userCity;
  String? userCountry;
  String? userEmail;
  String? userFirst;
  String? userGUID;
  String? userLast;
  double? userLat;
  double? userLon;
  String? userMobile;
  String? userPhone;
  String? userPosition;
  String? userState;
  String? userWebsite;
  String? userZip;
  String? couponCode;
  List<Items>? items;
  dynamic? totalPaid;
  dynamic? payAtEvent;
  dynamic? payLater;
  dynamic? payByMailOrWire;
  String? noText;
  String? userProvince;
  String? userReferral;
  String? checkIn;
  List<Uploads>? uploads;

  AttendeeDetailsResponse(
      {this.attendeeID,
      this.adminReg,
      this.applyProcessingFee,
      this.birthdate,
      this.registrationID,
      this.customFields,
      this.attendeeGUID,
      this.company,
      this.couponValue,
      this.finalDiscount,
      this.eventID,
      this.eventGUID,
      this.title,
      this.guests,
      this.lastUpdated,
      this.profileID,
      this.parentID,
      this.paymentMethod,
      this.qrCodeURL,
      this.registrationTime,
      this.processingFee,
      this.totalDue,
      this.userID,
      this.userAddress,
      this.userCompany,
      this.userCity,
      this.userCountry,
      this.userEmail,
      this.userFirst,
      this.userGUID,
      this.userLast,
      this.userLat,
      this.userLon,
      this.userMobile,
      this.userPhone,
      this.userPosition,
      this.userState,
      this.userWebsite,
      this.userZip,
      this.couponCode,
      this.items,
      this.totalPaid,
      this.payAtEvent,
      this.payLater,
      this.payByMailOrWire,
      this.noText,
      this.userProvince,
      this.userReferral,
      this.checkIn,
      this.uploads});

  AttendeeDetailsResponse.fromJson(Map<String, dynamic> json) {
    attendeeID = json['attendeeID'];
    adminReg = json['adminReg'];
    applyProcessingFee = json['applyProcessingFee'];
    birthdate = json['birthdate'];
    registrationID = json['registrationID'];
    if (json['customFields'] != null) {
      customFields = <CustomFields>[];
      json['customFields'].forEach((v) {
        customFields!.add(new CustomFields.fromJson(v));
      });
    }
    attendeeGUID = json['attendeeGUID'];
    if (json['company'] != null) {
      company = <Company>[];
      json['company'].forEach((v) {
        company!.add(new Company.fromJson(v));
      });
    }
    couponValue = json['couponValue'];
    finalDiscount = json['finalDiscount'];
    eventID = json['eventID'];
    eventGUID = json['eventGUID'];
    title = json['title'];
    if (json['guests'] != null) {
      guests = <Guests>[];
      json['guests'].forEach((v) {
        guests!.add(new Guests.fromJson(v));
      });
    }
    lastUpdated = json['lastUpdated'];
    profileID = json['profileID'];
    parentID = json['parentID'];
    paymentMethod = json['paymentMethod'];
    qrCodeURL = json['qrCodeURL'];
    registrationTime = json['registrationTime'];
    processingFee = json['processingFee'];
    totalDue = json['totalDue'];
    userID = json['userID'];
    userAddress = json['userAddress'];
    userCompany = json['userCompany'];
    userCity = json['userCity'];
    userCountry = json['userCountry'];
    userEmail = json['userEmail'];
    userFirst = json['userFirst'];
    userGUID = json['userGUID'];
    userLast = json['userLast'];
    userLat = json['userLat'];
    userLon = json['userLon'];
    userMobile = json['userMobile'];
    userPhone = json['userPhone'];
    userPosition = json['userPosition'];
    userState = json['userState'];
    userWebsite = json['userWebsite'];
    userZip = json['userZip'];
    couponCode = json['couponCode'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    totalPaid = json['totalPaid'];
    payAtEvent = json['payAtEvent'];
    payLater = json['payLater'];
    payByMailOrWire = json['payByMailOrWire'];
    noText = json['noText'];
    userProvince = json['userProvince'];
    userReferral = json['userReferral'];
    checkIn = json['checkIn'];
    if (json['uploads'] != null) {
      uploads = <Uploads>[];
      json['uploads'].forEach((v) {
        uploads!.add(new Uploads.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attendeeID'] = this.attendeeID;
    data['adminReg'] = this.adminReg;
    data['applyProcessingFee'] = this.applyProcessingFee;
    data['birthdate'] = this.birthdate;
    data['registrationID'] = this.registrationID;
    if (this.customFields != null) {
      data['customFields'] = this.customFields!.map((v) => v.toJson()).toList();
    }
    data['attendeeGUID'] = this.attendeeGUID;
    if (this.company != null) {
      data['company'] = this.company!.map((v) => v.toJson()).toList();
    }
    data['couponValue'] = this.couponValue;
    data['finalDiscount'] = this.finalDiscount;
    data['eventID'] = this.eventID;
    data['eventGUID'] = this.eventGUID;
    data['title'] = this.title;
    if (this.guests != null) {
      data['guests'] = this.guests!.map((v) => v.toJson()).toList();
    }
    data['lastUpdated'] = this.lastUpdated;
    data['profileID'] = this.profileID;
    data['parentID'] = this.parentID;
    data['paymentMethod'] = this.paymentMethod;
    data['qrCodeURL'] = this.qrCodeURL;
    data['registrationTime'] = this.registrationTime;
    data['processingFee'] = this.processingFee;
    data['totalDue'] = this.totalDue;
    data['userID'] = this.userID;
    data['userAddress'] = this.userAddress;
    data['userCompany'] = this.userCompany;
    data['userCity'] = this.userCity;
    data['userCountry'] = this.userCountry;
    data['userEmail'] = this.userEmail;
    data['userFirst'] = this.userFirst;
    data['userGUID'] = this.userGUID;
    data['userLast'] = this.userLast;
    data['userLat'] = this.userLat;
    data['userLon'] = this.userLon;
    data['userMobile'] = this.userMobile;
    data['userPhone'] = this.userPhone;
    data['userPosition'] = this.userPosition;
    data['userState'] = this.userState;
    data['userWebsite'] = this.userWebsite;
    data['userZip'] = this.userZip;
    data['couponCode'] = this.couponCode;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['totalPaid'] = this.totalPaid;
    data['payAtEvent'] = this.payAtEvent;
    data['payLater'] = this.payLater;
    data['payByMailOrWire'] = this.payByMailOrWire;
    data['noText'] = this.noText;
    data['userProvince'] = this.userProvince;
    data['userReferral'] = this.userReferral;
    data['checkIn'] = this.checkIn;
    if (this.uploads != null) {
      data['uploads'] = this.uploads!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Company {
  Company.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class CustomFields {
  dynamic? fieldID;
  String? response;
  String? fieldLabel;
  String? columnID;
  dynamic? optionID;

  CustomFields(
      {this.fieldID,
      this.response,
      this.fieldLabel,
      this.columnID,
      this.optionID});

  CustomFields.fromJson(Map<String, dynamic> json) {
    fieldID = json['fieldID'];
    response = json['response'];
    fieldLabel = json['fieldLabel'];
    columnID = json['columnID'];
    optionID = json['optionID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fieldID'] = this.fieldID;
    data['response'] = this.response;
    data['fieldLabel'] = this.fieldLabel;
    data['columnID'] = this.columnID;
    data['optionID'] = this.optionID;
    return data;
  }
}

class Guests {
  dynamic? guestID;
  String? guestFirst;
  String? guestLast;
  dynamic? guestMinor;
  String? guestDate;
  String? attendeeGUID;
  dynamic? hostUserID;
  dynamic? registrationID;
  String? attendeeID;
  String? checkIn;
  String? checkedOut;

  Guests(
      {this.guestID,
      this.guestFirst,
      this.guestLast,
      this.guestMinor,
      this.guestDate,
      this.attendeeGUID,
      this.hostUserID,
      this.registrationID,
      this.attendeeID,
      this.checkIn,
      this.checkedOut});

  Guests.fromJson(Map<String, dynamic> json) {
    guestID = json['guestID'];
    guestFirst = json['guestFirst'];
    guestLast = json['guestLast'];
    guestMinor = json['guestMinor'];
    guestDate = json['guestDate'];
    attendeeGUID = json['attendeeGUID'];
    hostUserID = json['hostUserID'];
    registrationID = json['registrationID'];
    attendeeID = json['attendeeID'];
    checkIn = json['checkIn'];
    checkedOut = json['checkedOut'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guestID'] = this.guestID;
    data['guestFirst'] = this.guestFirst;
    data['guestLast'] = this.guestLast;
    data['guestMinor'] = this.guestMinor;
    data['guestDate'] = this.guestDate;
    data['attendeeGUID'] = this.attendeeGUID;
    data['hostUserID'] = this.hostUserID;
    data['registrationID'] = this.registrationID;
    data['attendeeID'] = this.attendeeID;
    data['checkIn'] = this.checkIn;
    data['checkedOut'] = this.checkedOut;
    return data;
  }
}

class Items {
  dynamic? price;
  dynamic? recordID;
  dynamic? quantity;
  dynamic? itemID;
  String? fieldID;
  String? itemCategory;
  dynamic? bringingID;
  String? size;
  dynamic? extraID;
  String? itemName;
  String? checkIn;
  String? checkedOut;
  dynamic? checkInQty;

  Items(
      {this.price,
      this.recordID,
      this.quantity,
      this.itemID,
      this.fieldID,
      this.itemCategory,
      this.bringingID,
      this.size,
      this.extraID,
      this.itemName,
      this.checkIn,
      this.checkedOut,
      this.checkInQty});

  Items.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    recordID = json['recordID'];
    quantity = json['quantity'];
    itemID = json['itemID'];
    fieldID = json['fieldID'];
    itemCategory = json['itemCategory'];
    bringingID = json['bringingID'];
    size = json['size'];
    extraID = json['extraID'];
    itemName = json['itemName'];
    checkIn = json['checkIn'];
    checkedOut = json['checkedOut'];
    checkInQty = json['checkInQty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['recordID'] = this.recordID;
    data['quantity'] = this.quantity;
    data['itemID'] = this.itemID;
    data['fieldID'] = this.fieldID;
    data['itemCategory'] = this.itemCategory;
    data['bringingID'] = this.bringingID;
    data['size'] = this.size;
    data['extraID'] = this.extraID;
    data['itemName'] = this.itemName;
    data['checkIn'] = this.checkIn;
    data['checkedOut'] = this.checkedOut;
    data['checkInQty'] = this.checkInQty;
    return data;
  }
}

class Uploads {
  Uploads.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
