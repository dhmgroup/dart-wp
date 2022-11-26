import 'dart:convert';

class Shipping {
  final String? firstName;
  final String? lastName;
  final String? company;
  final String? address1;
  final String? address2;
  final String? city;
  final String? state;
  final String? postcode;
  final String? country;
  Shipping({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
  });

  Shipping copyWith({
    String? firstName,
    String? lastName,
    String? company,
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
  }) {
    return Shipping(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      company: company ?? this.company,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      state: state ?? this.state,
      postcode: postcode ?? this.postcode,
      country: country ?? this.country,
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
    };
  }

  factory Shipping.fromMap(Map<String, dynamic> map) {
    return Shipping(
      firstName: map['first_name'],
      lastName: map['last_name'],
      company: map['company'],
      address1: map['address_1'],
      address2: map['address_2'],
      city: map['city'],
      state: map['state'],
      postcode: map['postcode'],
      country: map['country'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Shipping.fromJson(String source) =>
      Shipping.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Shipping(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Shipping &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.company == company &&
        other.address1 == address1 &&
        other.address2 == address2 &&
        other.city == city &&
        other.state == state &&
        other.postcode == postcode &&
        other.country == country;
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
        country.hashCode;
  }
}
