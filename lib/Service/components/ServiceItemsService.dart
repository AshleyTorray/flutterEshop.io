import 'package:flutter/material.dart';
import 'package:shop_app/models/ServiceItems.dart';

class ServiceItemsService {
  static List<ServiceItems> serviceItemData =
      serviceRawData.map((data) => ServiceItems.fromJson(data)).toList();
  static List<ServiceItems> searchedServiceData = searchedServiceRawData
      .map((data) => ServiceItems.fromJson(data))
      .toList();
}

var serviceRawData = [
  //1
  {
    'image': [
      'assets/images/salon1.jpg',
      'assets/images/salon1.jpg',
    ],
    'name': 'Roma babershop',
    'price': 100,
    'rating': 4.0,
    'description': 'we serve good service to our customers.',
    'store_name': 'Roma Italy',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  // 2
  {
    'image': [
      'assets/images/salon3.jpg',
      'assets/images/salon3.jpg',
    ],
    'name': "Roman woman barber shop",
    'price': 200,
    'rating': 4.0,
    'description': 'womans barbershop',
    'store_name': 'Roma Italy',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  // 3
  {
    'image': [
      'assets/images/salon2.jpg',
      'assets/images/salon2.jpg',
    ],
    'name': "Nike Sportswear Swoosh",
    'price': 849000,
    'rating': 4.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  // 4
  {
    'image': [
      'assets/images/salon4.jpg',
      'assets/images/salon4.jpg',
    ],
    'name': "Adidas T-SHIRT R.Y.V.",
    'price': 1900000,
    'rating': 4.0,
    'description': 'modern fasion salon',
    'store_name': 'uoka Japan',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  //5
  {
    'image': [
      'assets/images/babershop1.jpg',
      'assets/images/babershop1.jpg',
    ],
    'name': "Adidas T-SHIRT R.Y.V.",
    'price': 1900000,
    'rating': 4.0,
    'description': 'modern fasion salon',
    'store_name': 'uoka Japan',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  //6
  {
    'image': [
      'assets/images/babershop2.jpg',
      'assets/images/babershop3.jpg',
    ],
    'name': "Adidas T-SHIRT R.Y.V.",
    'price': 1900000,
    'rating': 4.0,
    'description': 'modern fasion salon',
    'store_name': 'uoka Japan',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  //7
  {
    'image': [
      'assets/images/babershop3.jpg',
      'assets/images/babershop3.jpg',
    ],
    'name': "Adidas T-SHIRT R.Y.V.",
    'price': 1900000,
    'rating': 4.0,
    'description': 'modern fasion salon',
    'store_name': 'uoka Japan',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
];

var searchedServiceRawData = [
  {
    'image': [
      'assets/images/search/searchitem6.jpg',
      'assets/images/nikegrey.jpg',
    ],
    'name': 'Air Jordan XXXVI SE PF',
    'price': 2729000,
    'rating': 4.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  // 2
  {
    'image': [
      'assets/images/search/searchitem3.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Air Jordan 1 Retro OG",
    'price': 1749000,
    'rating': 5.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
  // 3

  {
    'image': [
      'assets/images/search/searchitem5.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Jordan Point Lane",
    'price': 2099000,
    'rating': 5.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },

  // 4

  {
    'image': [
      'assets/images/search/searchitem2.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Air Jordan 4 Crimson",
    'price': 2779000,
    'rating': 4.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },

  // 5

  {
    'image': [
      'assets/images/search/searchitem4.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Jordan Delta 2 SE",
    'price': 2099000,
    'rating': 5.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },

  // 5

  {
    'image': [
      'assets/images/search/searchitem1.jpg',
      'assets/images/nikeblack.jpg',
    ],
    'name': "Jordan One Take 3",
    'price': 1099000,
    'rating': 4.0,
    'description':
        'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
    'store_name': 'Nike Indonesia',
    'colors': [
      {
        'name': 'black',
        'color': Colors.black,
      },
      {
        'name': 'blueGrey',
        'color': Colors.blueGrey[200],
      },
      {
        'name': 'pink',
        'color': Colors.pink[100],
      },
      {
        'name': 'white',
        'color': Colors.white,
      },
    ],
    'sizes': [
      {
        'size': '36.0',
        'name': '36',
      },
      {
        'size': '37.0',
        'name': '37',
      },
      {
        'size': '38.0',
        'name': '38',
      },
      {
        'size': '42.0',
        'name': '42',
      },
    ],
    'reviews': [
      {
        'photo_url': 'assets/images/avatar1.jpg',
        'name': 'Uchiha Sasuke',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar2.jpg',
        'name': 'Uzumaki Naruto',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
      {
        'photo_url': 'assets/images/avatar3.jpg',
        'name': 'Kurokooo Tetsuya',
        'review':
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
        'rating': 4.0,
      },
    ]
  },
];
