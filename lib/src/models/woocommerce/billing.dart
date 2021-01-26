import 'dart:convert';

class Billing {
  final String firstName;
  final String lastName;
  final String company;
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String postcode;
  final String country;
  final String email;
  final String phone;
  Billing({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  Billing copyWith({
    String firstName,
    String lastName,
    String company,
    String address1,
    String address2,
    String city,
    String state,
    String postcode,
    String country,
    String email,
    String phone,
  }) {
    return Billing(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      company: company ?? this.company,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      state: state ?? this.state,
      postcode: postcode ?? this.postcode,
      country: country ?? this.country,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'company': company,
      'address_1': address1,
      'address_2': address2,
      'city': city,
      'state': state,
      'postcode': postcode,
      'country': country,
      'email': email,
      'phone': phone,
    };
  }

  factory Billing.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Billing(
      firstName: map['first_name'],
      lastName: map['last_name'],
      company: map['company'],
      address1: map['address_1'],
      address2: map['address_2'],
      city: map['city'],
      state: map['state'],
      postcode: map['postcode'],
      country: map['country'],
      email: map['email'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Billing.fromJson(String source) =>
      Billing.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Billing(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Billing &&
        o.firstName == firstName &&
        o.lastName == lastName &&
        o.company == company &&
        o.address1 == address1 &&
        o.address2 == address2 &&
        o.city == city &&
        o.state == state &&
        o.postcode == postcode &&
        o.country == country &&
        o.email == email &&
        o.phone == phone;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        company.hashCode ^
        address1.hashCode ^
        address2.hashCode ^
        city.hashCode ^
        state.hashCode ^
        postcode.hashCode ^
        country.hashCode ^
        email.hashCode ^
        phone.hashCode;
  }
}
