import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum FulfilmentMethod {
  collection,
  delivery,
  none,
}

enum DeliveryAddressLabel { home, work, hotel }

extension DeliveryAddressLabelHelpers on DeliveryAddressLabel {
  IconData get icon {
    switch (this) {
      case DeliveryAddressLabel.home:
        return FontAwesomeIcons.house;
      case DeliveryAddressLabel.work:
        return FontAwesomeIcons.building;
      case DeliveryAddressLabel.hotel:
        return FontAwesomeIcons.hotel;
    }
  }

  static DeliveryAddressLabel fromString(String value) {
    switch (value.toLowerCase()) {
      case 'home':
        return DeliveryAddressLabel.home;
      case 'work':
        return DeliveryAddressLabel.work;
      case 'hotel':
        return DeliveryAddressLabel.hotel;
      default:
        return DeliveryAddressLabel.home;
    }
  }
}
