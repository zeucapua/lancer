import 'UserModels.dart'; import 'Service.dart';

class Project {

  ///--- INSTANCE VARIABLES ---
  Freelancer freelancer; Client client;
  Service service;
  bool isFinished; //prob a timer and stopwatch


  ///--- CONSTRUCTOR ---
  Project(this.freelancer, this.client, this.service) { isFinished = false; }



  ///--- METHODS ---
  void _startProject() {
    // TODO: IMPLEMENT PAYMENT HOLD (IF FLAT SERVICE; ELSE HOLD INSURANCE FEE)



  }

  void _cancelProject(User canceller) {
    // TODO: IMPLEMENT PAYMENT CANCELLATION FEE BASED ON CANCELLER


  }

  void _finishProject() {
    isFinished = true;

    // TODO: IMPLEMENT PAYOUT OF HOLD



  }
}