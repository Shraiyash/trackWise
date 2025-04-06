## Overview
I am a huge fintech enthusiast! I always hated how the splitWise UI looked, and that fact it lacked a several features that I felt were essential for me. For example, being able to see the money I owed versus how much I'll be getting in the future through chart visulatization. This would help me clearly see how I can better manage my finances in the present and future. Therefore, with that idea in mind, I decided to come up with a new app that helps me be on top of my finances with this flutter application called TrackWise.

![TrackWise](https://github.com/user-attachments/assets/a5707593-b27e-42aa-9193-4052a1a66e6c)


## Tech Stack

  •	Flutter:
The entire app is built using Flutter, a popular UI toolkit that lets developers create beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.
	•	Dart:
The programming language Dart powers Flutter. It is efficient, easy to learn, and ideal for building responsive user interfaces.
	•	FL Chart:
For visualizing financial data, the app uses FL Chart to render interactive graphs and charts, making it easy to see trends in your spending and earnings.
	•	Cupertino and Material Widgets:
The app uses a blend of Cupertino (iOS-style) and Material (Android-style) design components, ensuring a consistent and modern look across all platforms.
	•	Provider:
State management is handled with Provider, a lightweight solution that helps keep the app’s data organized and responsive to changes.
	•	Other Dependencies:
Additional packages like intl help with formatting dates and currencies, ensuring that your financial data is presented clearly and accurately.


## Functionalities

  • Add and Manage Records
Easily add new financial records by entering the amount, choosing a category with a smooth toggle (e.g., Income or Expense), selecting the person involved via a stylish dropdown list that displays both images and names, and picking a date using an intuitive date picker.
	•	View Recent Activity:
The main screen displays a list of your recent transactions with neat visuals, including user images, names, amounts, and dates. This allows you to quickly glance over your recent financial activity.
	•	Interactive Graphs:
The app features interactive charts that provide visual insights into your spending and income patterns. Tapping or hovering over different parts of the graph reveals detailed information, making it easier to understand your financial trends.
	•	Modern UI Elements:
From sliding toggles for category selection to custom dropdown menus with user images, every component is designed to be both functional and visually appealing. The design is friendly, making it enjoyable to use on a daily basis.


## How to Run the App

To get started with Expense Tracker, follow these simple steps:
	1.	Install Flutter:
Make sure you have Flutter installed on your machine. You can download and install it from the Flutter website.
	2.	Clone or Download the Repository:
Obtain the source code by cloning the repository using Git or downloading the ZIP file.
git clone https://github.com/your_username/expense_tracker.git
	3.	Navigate to the Project Directory:
Open a terminal and change to the project directory:
cd expense_tracker
	4.	Fetch Dependencies:
Run the following command to install all the necessary packages defined in your pubspec.yaml:
flutter pub get
	5.	Run the App:
Connect a physical device or start an emulator, then run the app with:
flutter run
	6.	Hot Reload:
While developing, take advantage of Flutter’s hot reload feature by pressing r in the terminal to quickly see changes without restarting the app.


## Conclusion

TrackWise is a smart, modern companion for managing personal finances. Built with the latest technologies in Flutter and Dart, it offers a seamless and engaging experience whether you’re adding new records, tracking daily activities, or analyzing your financial data through interactive charts. With its clean interface and thoughtful design, Expense Tracker not only helps you keep your finances in check but also makes budgeting fun and accessible for everyone


