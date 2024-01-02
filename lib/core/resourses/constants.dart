import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/models/category_model.dart';

class Constants{
  static List<CategoryModel> categoryList=[
    CategoryModel("art", AssetImageManager.catHomePage1),
    CategoryModel("music", AssetImageManager.catHomePage2),
    CategoryModel("virtual", AssetImageManager.catHomePage3),
  ];
}