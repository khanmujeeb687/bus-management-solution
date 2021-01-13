import 'package:bus_management/Data/database/employees/employee_metadata.dart';

class EmployeeData{

  static List<Employee> data= [
    Employee("Advitiya Sujeet", '1201', EmployeeType.driver, '6398636978', 'DR-12', '1956-11-27', '1995-06-14'),
    Employee("Vijai Sritharan", '3453', EmployeeType.conductor, '6398636978', 'DR-12', '1956-11-27', '1995-06-14'),
    Employee("Naveen Tikaram", '6456', EmployeeType.ticket_seller, '6398636978', 'DR-12', '1956-11-27', '1995-06-14'),
    Employee("Jayadev Mitali", '4355', EmployeeType.driver, '00265278180', 'DR-32', '1970-06-11', '1985-03-30'),
    Employee("Jitendra Choudhary", '5355', EmployeeType.conductor, '08026611683', 'DR-32', '1970-06-11', '1995-03-30'),
    Employee("Hardeep Suksma", '9505', EmployeeType.ticket_seller, '02655546783', 'DR-32', '1970-06-11', '1975-03-30'),
    Employee("Gopa Trilochana", '5113', EmployeeType.driver, '02222182164', 'DR-70', '1949-10-15', '1958-02-01'),
    Employee("Dhritiman Salim", '8745', EmployeeType.conductor, '29819486', 'DR-70', '1949-10-15', '1958-02-01'),
    Employee("Dharmadhrt Ramila", '8454', EmployeeType.ticket_seller, '23234837', 'DR-70', '1949-10-15', '1958-02-01'),
    Employee("Avantas Ghosal", '5156', EmployeeType.driver, '04055616475', 'DR-26', '1979-07-26', '2019-10-06'),
    Employee("Devasru Subramanyan", '3349', EmployeeType.conductor, '55363012', 'DR-26', '1979-07-25', '2019-10-06'),
    Employee("Avantas Ghosal", '6786', EmployeeType.ticket_seller, '0222659223', 'DR-26', '1979-07-25', '2019-10-06'),
    Employee("Musafir khan", '1201', EmployeeType.driver, '6398636978', 'DR-19', '1954-08-17', '1980-12-27'),
    Employee("Avidosa Vaisakhi", '6575', EmployeeType.conductor, '01123738381', 'DR-19', '1954-08-17', '1980-12-27'),
    Employee("Aprativirya Seshan", '8686', EmployeeType.ticket_seller, '00112745768', 'DR-19', '1954-08-17', '1980-12-27'),
    Employee("Amrish Ilyas", '4656', EmployeeType.driver, '02223409697', 'DR-06', '1947-01-09', '12-12-2021'),
    Employee("Alagesan Poduri", '7684', EmployeeType.conductor, '6398636978', 'DR-06', '1947-01-09', '12-12-2021'),
    Employee("Aditi Musunur", '8568', EmployeeType.ticket_seller, '6398636978', 'DR-06', '1947-01-09', '12-12-2021'),
    Employee("Chalasani Viraf", '4534', EmployeeType.driver, '6398636978', 'DR-27', '06/11/1999', '2020-06-02'),
    Employee("Jayanti Matta", '5646', EmployeeType.conductor, '01123649176 ', 'DR-27', '06/11/1999', '2020-06-02'),
    Employee("Karisni Namdev", '4566', EmployeeType.ticket_seller, '6398636978', 'DR-27', '06/11/1999', '2020-06-02'),

  ];



 static int  countKeyword(type){
   int count=0;
   for(int i=0;i<data.length;i++){
     if(data[i].type==type){
       count++;
     }
   }
   return count;
 }

 static double getDriversPercent(){
   return ((countKeyword(EmployeeType.driver)/data.length));
 }


 static double getTicketSellersPercent(){
   return ((countKeyword(EmployeeType.ticket_seller)/data.length));
 }


 static double getConductorsPercent(){
   return ((countKeyword(EmployeeType.conductor)/data.length));
 }


 static List<Employee> getDrivers(){
   return data.where((e) => e.type==EmployeeType.driver).toList();
 }

 static List<Employee> getTicketSeller(){
   return data.where((e) => e.type==EmployeeType.ticket_seller).toList();
 }

 static List<Employee> getConductors(){
   return data.where((e) => e.type==EmployeeType.conductor).toList();
 }

}