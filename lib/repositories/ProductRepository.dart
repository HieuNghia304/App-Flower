import 'package:day59/config/Stringtext.dart';
import 'package:day59/shared/typedef.dart';
import 'package:intl/intl.dart';
import 'package:day59/services/networking/ApiService.dart';

class ProductRepository {
  final ApiService _apiService;

  ProductRepository(this._apiService);

  Future<List<JSON>> getDiscountedProducts() async {
    // var response = await _apiService.get(endpoint: '/products/discounted');

    var products = [
      {
        'id': 1,
        'name': 'Nhất Mạt Hương',
        'image': 'https://hoadepviet.com/wp-content/uploads/2018/05/nhat-mat-huong.jpg',
        'price': NumberFormat.currency(locale: 'vi', symbol: '₫').format(130000),
        'discount': NumberFormat.currency(locale: 'vi', symbol: '₫').format(10),
        'discountPrice': NumberFormat.currency(locale: 'vi', symbol: '₫').format(125000),
        'description': StringTexts.DescriptionNhatMatHuong,
        'category': {
          'id': 2,
          'name': 'Fashion',
          'image': 'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2595&q=80',
        },
        'colors': ['Red', 'Blue', 'Green'],
        'sizes': ['S', 'M', 'L'],
        'images': [
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'Chậu Cây Để Bàn',
        'model': 'M-01',
        'weight': '100g', 
      },
      {
        'id': 2,
        'name': 'Sen Đá ',
        'image': 'https://salt.tikicdn.com/cache/w1200/ts/product/7c/c2/a2/101584e35be4be00fb0c64573af3734c.jpg',
        'price': NumberFormat.currency(locale: 'vi', symbol: '₫').format(18000),
        'discount': NumberFormat.currency(locale: 'vi', symbol: '₫').format(5),
        'discountPrice': NumberFormat.currency(locale: 'vi', symbol: '₫').format(15000),
        'description': 'Cây sen đá Nuda có màu xanh, dạng đài, bông thường nhỏ và mọc theo bụi. Cây rất dễ sống và có sức phát triển khỏe, không cần yêu cầu nhiều ánh sáng, phù hợp nơi thoáng mát như ban công, cửa sổ, hiên nhà, quán cà phê…',
        'category': {
          'id': 9,
          'name': 'Shoes',
          'image': 'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2595&q=80',
        },
        'colors': ['Red', 'Blue', 'Green'],
        'sizes': ['S', 'M', 'L'],
        'images': [
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'Chậu Cây Để Bàn',
        'model': 'Air Max',
        'weight': '100g',
      },
      {
        'id': 3,
        'name': 'Sen đá Giva',
        'image': 'https://webcaycanh.com/wp-content/uploads/2022/04/cay-sen-da-giva.jpg',
        'price': NumberFormat.currency(locale: 'vi', symbol: '₫').format(18000),
        'discount': NumberFormat.currency(locale: 'vi', symbol: '₫').format(5),
        'discountPrice': NumberFormat.currency(locale: 'vi', symbol: '₫').format(15000),
        'description': 'Cây sen đá Giva có dạng đài, lá to và có màu xanh. Những cây có sắc xanh ở lá thường không cần quá nhiều ánh sáng, điều quan trọng là cần sự thoáng mát. Chính vì thế cây sen đá Giva sẽ có thể phù hợp nơi có ít nắng như ban công, cửa sổ, hiên nhà…',
        'category': {
          'id': 2,
          'name': 'Fashion',
          'image': 'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2595&q=80',
        },
        'images': [
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'Chậu Để Bàn',
      },
      {
        'id': 4,
        'name': 'Sen đá Liên Đài Hồng',
        'image': 'http://vuoncaysenda.com/uploads/pro_photos/sen-da-92-15928056756.jpg',
        'price': NumberFormat.currency(locale: 'vi', symbol: '₫').format(45000),
        'discount': NumberFormat.currency(locale: 'vi', symbol: '₫').format(5),
        'discountPrice': NumberFormat.currency(locale: 'vi', symbol: '₫').format(25000),
        'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        'category': {
          'id': 2,
          'name': 'Fashion',
          'image': 'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2595&q=80',
        },
        'images': [
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'Chậu Cây Để Bàn',
      }
    ];

    return products;
  }

  Future<JSON> getProductId(int id) async {
    var products = await getDiscountedProducts();
    var product = products.firstWhere((element) => element['id'] == id);

    return product;
  }
}
