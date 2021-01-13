import 'package:bus_management/Data/database/employees/employee_metadata.dart';

class EmployeeData{

  static List<Employee> data= [
    Employee("Mujeeb khan", '1201', EmployeeType.driver, '6398636978', 'DR-12', '06/11/1999', '12-12-2021'),
    Employee("Mujeeb khan", '1201', EmployeeType.conductor, '6398636978', 'DR-12', '06/11/1999', '12-12-2021'),
    Employee("Mujeeb khan", '1201', EmployeeType.ticket_seller, '6398636978', 'DR-12', '06/11/1999', '12-12-2021'),
  ];



 static int  countKeyword(type){
   int count=0;
   for(int i=0;i<data.length;i++){
     if(data[i]==type){
       count++;
     }
   }
   return count;
 }

 static double getDriversPercent(){
   return ((countKeyword(EmployeeType.driver)/data.length)*100);
 }


 static double getTicketSellersPercent(){
   return ((countKeyword(EmployeeType.ticket_seller)/data.length)*100);
 }


 static double getConductorsPercent(){
   return ((countKeyword(EmployeeType.conductor)/data.length)*100);
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