import 'package:mini_flutter_nft_marketplace/core/resourses/asset_mage_manager.dart';
import 'package:mini_flutter_nft_marketplace/models/category_model.dart';
import 'package:mini_flutter_nft_marketplace/models/collections_model.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel("art", AssetImageManager.catHomePage1),
    CategoryModel("music", AssetImageManager.catHomePage2),
    CategoryModel("virtual", AssetImageManager.catHomePage3),
  ];
  static List<CollectionsModel> collectionList = [
    CollectionsModel(AssetImageManager.trendingHomePage1, "3d art", true, 200)
   , CollectionsModel(AssetImageManager.trendingHomePage2, "Portrait Art", true, 300)
    ,CollectionsModel(AssetImageManager.trendingHomePage3, "Abstract Art", false, 400)
  ];
}
