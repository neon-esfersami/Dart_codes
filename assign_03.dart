
class Car{
  String brand;
  String? model;
  int year;
  double milesDriven=0.0;
  int? age;
  static  int numberOfCars=0;

  Car(this.brand,this.model,this.year,this.age){
    numberOfCars++;
  }
  drive(double miles){
   milesDriven+=miles;
  }

  getMilesDriven(){
   return milesDriven;
  }

  getBrand(){
   return brand;
  }

  getModel(){
    return model;
  }

   int getYear(){
    return year;
  }

  getAge(){
   return age;
  }

}

void main(){
Car car_1=Car('Toyota ', 'Camry ',2020,3);
Car car_2=Car('Honda ', 'Civic ',2018,5);
Car car_3=Car('Ford  ', 'F-150 ',2015,8);
car_1.drive(10000.0);
car_2.drive(8000.0);
car_3.drive(15000.0);
print('Car 1 :'+car_1.getBrand()+''+car_1.getModel()+''+car_1.getYear().toString()+' Miles: '+''+car_1.getMilesDriven().toInt().toString()+' Age:'+car_1.getAge().toString());
print('Car 2 :'+car_2.getBrand()+''+car_2.getModel()+''+car_2.getYear().toString()+' Miles: '+''+car_2.getMilesDriven().toInt().toString()+' Age:'+car_2.getAge().toString());
print('Car 3 :'+car_3.getBrand()+''+car_3.getModel()+''+car_3.getYear().toString()+' Miles: '+''+car_3.getMilesDriven().toInt().toString()+' Age:'+car_3.getAge().toString());

 print('Total number of cars created: '+Car.numberOfCars.toString());
}