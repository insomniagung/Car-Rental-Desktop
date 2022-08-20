## Car Rental System

This project was created to fulfill a Lecture Assignment: Object-Based Programming.

Here I use **Netbeans** software for Integrated Development Environment, then use plugin **"mysql-connector-java-5.1.23-bin.jar"** to connect to MySQL Database, and also use **"jcalendar -1.4.jar"** to display Library JKalender as rental date. So, you can use the included plugin to fix errors when the project is run.

Algorithm on Car Rental System:
1. Make sure the sql database with the name "dbms_rentalmobil" is installed on the *localhost* system.
2. Make sure the plugins (sql connector and jcalender) are installed correctly, so that there are no errors.
3. Run the project, or by running menu_login.java, to enter the dashboard page please enter the correct username and password, there are two administrator roles, namely as Admin and Staff. If you want to log in as an Admin, the default can use the username "agung" and the password "1234", if you want to enter as a Staff the default can use the username "staff" and the password "staff".
4. In the Dashboard Menu, there is the Add Car Menu, Car Rental Menu, and Car Return Menu. There is also a User Menu if logged in as Admin.
5. Open the Add Car Menu, in this menu there is a form for adding a car that contains the brand, type, year of production, police number, rental price, and status of the car rental condition. We as Admin/Staff can add, change, and delete available car data.
6. Open the Car Rental Menu, fill in the form for filling in the car rental information, the form contains Name, NIK, Phone Number, Email, and Address. To view the input details, click view, if the data is correct then click Continue Transaction.
7. Still in the Car Rental Menu, please select the available car based on the police number so that the details of the car will appear. Then select the rental date and the return date of the car, and click on the length of the loan (days) to display the length of the loan, then click Calculate Price to display the total payment. Finally, click Save Data.
8. Open the Return Car Menu, then fill in the car return form by selecting the car you want to return because it has been rented out, then click Return Car. On this menu there is also a button to print transactions and export tables to Excel format.
9. Log out if you want to close the car rental system application by clicking the Log Out button.
