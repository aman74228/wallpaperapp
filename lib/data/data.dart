import 'package:wallpaper_app/model/categories_model.dart';

String apiKey = "cB4hSMAA54jRUkeMKYmUiJmnzX7h9Fhec6Oh2LMTpoSBhdkX4T8stmTw";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = [];
  CategoriesModel categoriesModel = CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/1448136/pexels-photo-1448136.jpeg?cs=srgb&dl=pexels-john-nail-1448136.jpg&fm=jpg&w=6016&h=4016&_gl=1*1lx9tw8*_ga*NDk2NjA3NTExLjE2ODUyNDM0OTc.*_ga_8JE65Q40S6*MTY4NTI3MTU2NC4zLjEuMTY4NTI3MjcwNS4wLjAuMA..";
  categoriesModel.categoriesName = "Monuments";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/162379/lost-places-pforphoto-leave-factory-162379.jpeg?cs=srgb&dl=pexels-pixabay-162379.jpg&fm=jpg&w=4608&h=3072&_gl=1*1c4ekju*_ga*NDk2NjA3NTExLjE2ODUyNDM0OTc.*_ga_8JE65Q40S6*MTY4NTI3MTU2NC4zLjEuMTY4NTI3Mjc0MC4wLjAuMA..";
  categoriesModel.categoriesName = "Street art";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?cs=srgb&dl=pexels-stein-egil-liland-3408744.jpg&fm=jpg&w=3546&h=2255&_gl=1*9zsfv2*_ga*NDk2NjA3NTExLjE2ODUyNDM0OTc.*_ga_8JE65Q40S6*MTY4NTI3MTU2NC4zLjEuMTY4NTI3MjU2My4wLjAuMA..";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/3422964/pexels-photo-3422964.jpeg?cs=srgb&dl=pexels-abdulwahab-alawadhi-3422964.jpg&fm=jpg&w=4096&h=2304&_gl=1*mv5lw0*_ga*NDk2NjA3NTExLjE2ODUyNDM0OTc.*_ga_8JE65Q40S6*MTY4NTI3MTU2NC4zLjEuMTY4NTI3Mjc3OS4wLjAuMA..";
  categoriesModel.categoriesName = "Cars";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/4737484/pexels-photo-4737484.jpeg?cs=srgb&dl=pexels-rafael-cerqueira-4737484.jpg&fm=jpg&w=4288&h=2848&_gl=1*1x5bzji*_ga*NDk2NjA3NTExLjE2ODUyNDM0OTc.*_ga_8JE65Q40S6*MTY4NTI3MTU2NC4zLjEuMTY4NTI3MjgwNi4wLjAuMA..";
  categoriesModel.categoriesName = "Sky";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?cs=srgb&dl=pexels-jaime-reimer-2662116.jpg&fm=jpg&w=5407&h=3605&_gl=1*1oj5jsz*_ga*NDk2NjA3NTExLjE2ODUyNDM0OTc.*_ga_8JE65Q40S6*MTY4NTI3MTU2NC4zLjEuMTY4NTI3MjgzNC4wLjAuMA..";
  categoriesModel.categoriesName = "Landscapes";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  return categories;
}
