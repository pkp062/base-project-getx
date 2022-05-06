class AppConstants {
  //App related
  static const String appName = 'Contact Scan';
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
  static const String eventConfNumber = 'eventConfNumber';
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
  static const String alsoWorksWith = 'also works with';

  //event selection
  static const String selectEventHost = 'Select event host site';
  static const String eventIdentification = 'Event identification';
  static const String registrationConformation = 'Registration Confirmation';
  static const String eventIdHint = 'Event ID';
  static const String confirmationNumber = 'Confirmation Number';
  static const String eventCodeHint = 'Authorization Code';
  static const String eventIdDesc =
      'Please enter the attendee confirmation number and authorization code you received via email when you registered.';
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

  //check In Stats
  static const String eventLevel = 'EVENT LEVEL';
  static const String itemLevel = 'ITEM LEVEL';

  static const String conference =
      '2021 Conference on Contact Scanning Procedures With Two Lines for The Title - Centered';

  //validation
  static const String noInternet = 'Please check your internet connection';
  static const String emptyValueConfNumber = 'Please enter confirmation number';
  static const String somethingWentWrong = 'Something went wrong';
  static const String userAuthFailed = 'The user authentication got failed';
  static const String searchValidation = 'Kindly enter two or more characters for search';
  static const String invalidDetails = 'Invalid Details';
  static const String emptyValueAuthorizationCode =
      'Please enter authorization code';

  //Search
  static const String search = 'SEARCH';
  static const String guests = ' guests)';
  static const String go = 'Go';
  static const String searchHint = 'Attendee last name (partial or full)';
  static const String nonCheckedInAttendee = 'Only non-checked-in attendees';

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
