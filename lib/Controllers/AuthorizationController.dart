import 'package:hive/hive.dart';

class User{
  int user_id = 0;
  String token = '';
}

class Auth{
// создаём статический экземпляр собственного класса
  static final Auth _auth = new Auth._internal();
  int user_id = 0;
  String token = '';
  var string_box;
  User user = User();

  // фабрика - конструктор который не возвращает существующий объект
  factory Auth(){
    return _auth;
  }

  void set_auth_data(int id, String token){
    this.user_id = id;
    this.token = token;
    this.string_box.put('user_id', this.user_id);
    this.string_box.put('token', this.token);
  }

  User get_my_user(){
    return this.user;
  }

  bool is_auth(){
    if (this.token==''){
      return false;
    }
    return true;
  }

  Auth._internal(){ // конструктор, вызывается единожды при создании экземпляра
    this.string_box = Hive.openBox<String>('auth');
    this.user_id = this.string_box.get('user_id');
    this.token = this.string_box.get('token');
    this.user.user_id = this.user_id;
    this.user.token = this.token;
  }

}