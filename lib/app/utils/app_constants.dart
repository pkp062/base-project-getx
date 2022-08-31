class AppConstants {
  //App related
  static const String appName = 'EventSquid';
  static const int appVersion = 1;

  //API related
  static const String baseApi1 = 'https://www.eventsquid.com/api/v2/public';
  static const String baseApiEndPoint = '/api/v2';
  static const String authApiEndPoint = '/api/v2/public';
  static const String authenticate = '/authenticate';
  static const String getEvents = '/getHosts';
  static const String searchAPI= '/attendeeSearch/';
  static const String postCheckIn = '/checkIn';
  static const String postCheckOut = '/checkOut';
  static const String decrement = '/decrement';
  static const String scope = 'scope';
  static const String event = 'event';
  static const String item = 'item';
  static const String guest = 'guest';

  //API results
  static const String checkInFail = 'Check-In Failed';
  static const String attendeeAlreadyCheckedIn = 'Attendee already checked in.';
  static const String registrationItemNotFound = 'Registration item not found.';
  static const String attendeeAlreadyCheckedOut =
      'Attendee is already checked out for this event.';
  static const String attendeeAlreadyCheckedInItem =
      'Attendee is already checked in for this registration item.';
  static const String attendeeAlreadyCheckedOutItem =
      'Attendee is already checked out for this registration item.';
  static const String notCheckedIn =
      'Attendee must be checked in for this registration item before being checked out.';

  /*
Shared Pref
  */
  static const String apiKey = 'apiKey';
  static const String showInstruction = 'showInstruction';
  static const String eventAuthData = 'eventAuthData';
  static const String eventAuthID = 'eventAuthID';
  static const String eventAuthPassword = 'eventAuthPassword';
  static const String dropdownValue = 'dropdownValue';
  static const String scopeName = 'scopeName';
  static const String selectedIndex = 'selectedIndex';
  static const String isEventCheck = 'isEventCheck';
  static const String isAttendeeCheck = 'isAttendeeCheck';
  static const String itemCategory = 'itemCategory';
  static const String eventFeeID = 'eventFeeID';
  static const String disableDecrementing = 'disableDecrementing';
  static const String currentTime = 'currentTime';

  /*
  UI related
  */
  //dashboard
  static const String scanningApp = 'Scanning App';
  static const String alsoWorksWith = 'also works with';

  //event selection
  static const String selectEventHost = 'Select event host site';
  static const String eventIdentification = 'Event identification';
  static const String eventIdHint = 'Event ID';
  static const String eventCodeHint = 'Authorization Code';
  static const String eventIdDesc =
      'Please enter the event ID and check-in authorization code established by your event administrator';
  static const String authorize = 'AUTHORIZE';
  static const String changeEvent = 'change event';
  static const String cancel = 'cancel';
  static const String areYouSure = 'ARE YOU SURE?';
  static const String eventChangeConfirmation =
      'By changing the event, you will no longer be able to check people in and'
      ' out of the current event or any items in the current event.';
  static const String eventChangeRefresh =
      'If you need to refresh the current event’s data, use the'
      ' refresh function in the main menu.';
  static const String instructions = 'Instructions';
  static const String scanScope = 'Scan Scope';
  static const String scanScope1 = 'Scan scope:';
  static const String scanScopeDetails =
      'The scan scope selector dictates how the app will handle information from the QR code. Review the methods below and be sure to set up your authorization code in the MANAGE ORGANIZATION section of the Eventsquid site.';
  static const String eventCheckInOut = 'Event Check-In/Out';
  static const String eventCheckInOutDetails =
      'In this mode, scanning an attendee’s QR code will simply check the attendee either in or out of the event depending on which Scan Selector option is chosen.';
  static const String sessionBasedCheckInOut = 'Session-Based Check-In/Out';
  static const String sessionBasedCheckInOutDetails =
      'By setting the Scan Selector to a specific session, you can swiftly check in attendees simply by scanning their QR code or by positioning a tablet or phone on a stand so that attendees can slide their QR code into the scan area. You can tap “Scan Another” to scan the next person or wait for the screen to revert to the scanner. You may set the auto revert interval in the Event Builder > Event Day area.\n \nIf a user is NOT REGISTERED for a session, the screen WILL NOT automatically revert so that you may determine next steps for the un-registered attendee.\n \nIf you re-scan an attendee for a session into which they have already been checked in, the system act in the manner you have specified in the app setup area of the Event Builder.';
  static const String scanToFullRegistration = 'Scan to Full Registration';
  static const String scanToFullRegistrationDetails =
      'Scanning a QR code will bring you to the attendee’s full registration where you can selectively check the attendee in or out of specific items.';
  static const String selectScope = 'SELECT SCOPE';
  static const String scanMode = 'Scan mode:';

  //drawer
  static const String changeScanScopeMode = 'Change Scan Scope/Mode';
  static const String checkInStats = 'Check-In Stats';
  static const String newEvent = 'New Event';
  static const String refreshEventData = 'Refresh Event Data';
  static const String dataRefreshed = 'Data Refreshed';

  //scan screen
  static const String checkIn = 'CHECK IN';
  static const String checkedIn = 'Checked In';
  static const String checkOut = 'CHECK OUT';
  static const String checkedOut = 'Checked Out';
  static const String redeem = 'REDEEM';
  static const String redeemed = ' REDEEMED';
  static const String attention = 'Attention';
  static const String invalidQR = 'Invalid QR';
  static const String scanAttendee = 'Scan attendee’s badge, phone or voucher';
  static const String toBeginScanning =
      'To begin scanning, select a scan scope.';
  static const String pleaseSelectScope = 'Please select a scope';

  //change scope mode
  static const String yes = 'Yes';
  static const String no = 'No';
  static const String selectScopeChange = 'Select Scope';
  static const String selectScopeChangeDetails =
      'The scope tells the app where to log the check-in/out data for the attendee. To view an attendee’s entire event registration (with the option to check in/out of each registration item), use FULL ATTENDEE PROFILE.';
  static const String eventLevelAttendance = 'EVENT LEVEL ATTENDANCE';
  static const String eventLevelACheckInOut = 'Event Level Check-In/Out';
  static const String specificSessionAttendance = 'SPECIFIC SESSION ATTENDANCE';
  static const String specificSessionAttendanceDetails =
      'If a checked-in attendee is scanned after 2 minutes following check-in, the system will record a check-out.';
  static const String fullAttendeeProfile = 'FULL ATTENDEE PROFILE';
  static const String scanToFullRegistrationProfile =
      'Scan to full registration profile';

  //check In Stats
  static const String eventLevel = 'EVENT LEVEL';
  static const String itemLevel = 'ITEM LEVEL';

  static const String conference =
      '2021 Conference on Check-in and Check-Out \nProcedures With Two Lines for The Title - Centered';

  //validation
  static const String noInternet = 'Please check your internet connection';
  static const String emptyValueEventId = 'Please enter event id';
  static const String somethingWentWrong = 'Something went wrong';
  static const String userAuthFailed = 'The user authentication got failed';
  static const String searchValidation = 'Kindly enter two or more characters for search';
  static const String invalidDetails = 'Invalid Details';
  static const String emptyValueAuthorizationCode =
      'Please enter authorization code';

  //scan result screen
  static const String eventCheckIn = 'Event Check-In';
  static const String eventCheckOut = 'Event Check-Out';
  static const String profileName = '{Profile Name}';
  static const String balanceDue = 'BALANCE DUE';
  static const String attendeeDetails = 'Attendee Details';
  static const String checkInGuests = 'Check-In Guests';
  static const String noResults = 'No Search Result Found';
  static const String inValidQrCodeString = 'EITHER THE ATTENDEE’S ID IS NOT ASSOCIATED WITH THIS EVENT OR THE EVENT ID IS INCORRECT. \n\nVERIFY THAT THE QR CODE WAS GENERATED FOR THIS EVENT. WE RECOMMEND HAVING AN EVENT ADMINISTRATOR CHECK THE EVENT DASHBOARD.';
  static const String miscellaneousInfo =
      'Miscellaneous information from sub classes, options, tables assignments, booths, etc.';
  static const String reviewAttendeeInfo =
      'Please review the attendee dashboard for additional details or to manually register this attendee for this session.';
  static const String notCheckedInInfo =
      'This attendee was not checked in. Please review the attendee dashboard.';

  //Search
  static const String search = 'SEARCH';
  static const String guests = ' guests)';
  static const String go = 'Go';
  static const String searchHint = 'Attendee last name (partial or full)';
  static const String nonCheckedInAttendee = 'Only non-checked-in attendees';

  //Guest list
  static const String returnTo = 'Return to Attendee Details';
  static const String tapGuests = 'Tap the guest to check them in';
  static const String checkInValidation = 'NOT CHECKED INTO EVENT';

  // check in stats
  static const String inn = 'in';
  static const String out = 'out';

  // session related strings
  static const String sessionExpired = 'Your session has expired. Please re-authorize the app for your event.';
  static const String kindlyLoginAgain = 'Kindly login again.';
  static const String ok = 'Ok';

  // session time
  static const int timeDifference = 1;

}
