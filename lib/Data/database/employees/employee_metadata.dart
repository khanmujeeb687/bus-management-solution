class Employee{
  String name;
  String busNo;
  String type;
  String phone;
  String Licence;
  String DOB;
  String DateOfJourney;


  Employee(this.name,this.busNo,this.type,this.phone,this.Licence,this.DOB,this.DateOfJourney);
}


class EmployeeType{
  static String driver='driver';
  static String ticket_seller='ticket_seller';
  static String conductor='conductor';
}