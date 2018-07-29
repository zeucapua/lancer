import 'Project.dart'; import 'Service.dart';

// TODO: IMPLEMENT JSON POST AND RETRIEVAL FOR ALL MODELS

class User {

  ///--- INSTANCE VARIABLES ---
  String username, password, email;
  var projects = <Project>[];


  ///--- CONSTRUCTOR ---
  User(this.username, this.password, this.email, this.projects);


  ///--- JSON ---
  // construct from JSON response
  User.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        password = json['password'],
        email    = json['email'];
        //projects = json['projects'];

  // create JSON body for future POST
  Map<String, dynamic> toJson() =>
      {
        'username': username,
        'password': password,
        'email'   : email,
        'isFreelancer': this is Freelancer ? 1 : 0
        //'projects': projects
      };
}

class Client extends User {

  ///--- INSTANCE VARIABLES ---
  String organization;


  ///--- CONSTRUCTOR ---
  Client(String username, String password, String email, List<Project> projects, this.organization) : super(username, password, email, projects);


  ///--- JSON ---
  // construct from JSON response
  Client.fromJson(Map<String, dynamic> json)
      : organization = json['organization'],
        super.fromJson({'username': json['username'],'password': json['password'],'email': json['email'],
      //'projects': json['projects']
      });

  // create JSON body for future POST
  Map<String, dynamic> toJson() =>
      {
        'username': username,
        'password': password,
//        'organization' : organization,
        'email'   : email,
        //'projects': projects
      };
}

class Freelancer extends User {

  ///--- INSTANCE VARIABLES ---
  String job, about;
  var services = <Service>[];


  ///--- CONSTRUCTOR ---
  Freelancer(String username, String password, String email, List<Project> projects, this.job, this.about) : super(username, password, email, projects);


  ///--- JSON ---
  // construct from JSON response
  Freelancer.fromJson(Map<String, dynamic> json)
      : job = json['job'],
        about = json['about'],
        services = json['services'],
        super.fromJson({'username': json['username'], 'password': json['password'], 'email': json['email'],
        //'projects': json['projects'], 'services': json['services'],
      });

  // create JSON body for future POST
  Map<String, dynamic> toJson() =>
      {
        'username': username,
        'password': password,
        'email'   : email,
//        'job'     : job,
//        'about'   : about,
//        'projects': projects,
//        'services': services
      };
}