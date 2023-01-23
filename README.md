# mentztest

A new Flutter project.

## Getting Started

This app displays results of a search. 
To perform a search user should enter a text into Text Field and hit "SearchIt!" button.
Optionally, the results can be filtered with a help of a drop-down button "Filter by type:"

The app uses Riverpod as a state management, which holds:
 - the current state of loading (success, error etc); 
 - result (locations, with Name, Type, Coordinates, and, if aplicable- Street and House No) of the current search;
 - type of the locations of the current search;
 - current type of the locations (by default - All).
 
 Also, as the data model the app uses Freezed package due to it simplicity and conveniece of using. Because of that, any changes to Provider should be followed with the command:
  ```
  flutter pub run build_runner build
  ```
  to re-generate the needed files.

 For the HTTP calls- http package. Dio was not concidered as it has a lot of flaws.

 For routing (although it is not needed, as the app has only 1 screen) - go_router package.

 Also there are 2 test - 1 unit test for the Provider and 1 Widget test.

