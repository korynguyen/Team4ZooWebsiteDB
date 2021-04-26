This project was created using ASP.Net. In order to run it locally, you must have Visual Studio installed on your computer.

To open up the project in Visual Studio open the file Team4ZooWebsiteDB.sln. 

If you dont have the required dependencies installed you should get a prompt from Visual Studios telling you to install ASP.Net and it will have a button to download required dependencies. 

If there was no prompt and you dont have ASP.Net installed. Open Visual Studio Installer (install it if not installed) and click on modify on your currently installed Visual Studio version then under Web & Cloud click the checkmark on "ASP.NET and web development" then click modify in the bottom right corner.

To start the project click on "IIS Express" with the green arrow on the toolbar on the top of Visual Studio.

If you get the error shown in error.png when trying to start the project, comment out line 4 in the corresponding file.
This file is created when building the project so it has to be changed.

Email/Pass for Supervisor:
doggo@gmail.com
doggopass

Email/Pass for Employee:
John@gmail.com
johnpass

If trying to use a locally hosted database, you must change Team4ZooDB/Members/General/connection.txt and change the fields.
Our online hosted database subscription ends on April 5, 2021 so after this date the database would have to be hosted locally.

Website link: https://team4zoowebsitedb.azurewebsites.net/

Database Dump link: https://drive.google.com/drive/folders/1kyuK3uZgPRWIFJWaGrmg7w3kNzDhYwen

Zoo DB Triggers

Most triggers add to the 'notifications' table which is meant to be reviewed by a host to send out emails. Unsent messages from the notifications table are marked by the 'Sent' value (0 -> No, 1 -> Yes)
Notifications table contains a unique identification numbers (int), if it was sent (boolean), the name (string), type of email (string), and the timestamp of when it was last updated and or added (timestamp). The only other time a item in the notifications table should be updated is when it is sent.

1. itemtype AFTER UPDATE - Create notification of low stock notice if updated item is 10 or under in supply

2. ticket AFTER INSERT - Create notification to email member when ticket is purchased

3. employee BEFORE UPDATE - Stops a user from updating an employee's ID and tosses an error

4. employee AFTER UPDATE - Create notification of role change when an employee's role is updated