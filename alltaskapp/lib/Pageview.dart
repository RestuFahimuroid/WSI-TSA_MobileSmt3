class AppBanner {
  final int id;
  final String title;
  final String imagesource;

  AppBanner(this.id, this.title, this.imagesource);
}

//Sample data
List<AppBanner> appBannerList = [
  AppBanner(1, 'Title', 'img/pythonimg.jpg'),
  AppBanner(2, 'Title', 'img/linux.png'),
  AppBanner(3, 'Title', 'img/clanguage.png'),
  AppBanner(4, 'Title', 'img/code.png'),
  AppBanner(5, 'Title', 'img/github.png'),
];
