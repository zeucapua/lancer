
class Service {

  ///--- INSTANCE VARIABLES ---
  String name, description, type;
  double rate;


  ///--- CONSTRUCTOR ---
  Service(this.name, this.description, this.type, this.rate);


  ///--- METHODS ---
  double getTotal(double hours) {
    var total = rate * hours;

    return double.parse(total.toStringAsFixed(2));
  }
}