
class Stores {
  static const steam = Store('Steam', "assets/images/steam_logo.png", 1, StoreEnum.steam);
  static const epic =
      Store('Epic Store', "assets/images/epic_logo.png", 2, StoreEnum.epic);
  static const microsoft =
      Store('Microsoft store', "assets/images/microsoft_logo.png", 3, StoreEnum.microsoft);
  static const play =
      Store('Play Store', "assets/images/play_logo.png", 4, StoreEnum.play);

  static Store getStore(StoreEnum storeEnum) {
    switch (storeEnum) {
      case StoreEnum.steam:
        return Stores.steam;
      case StoreEnum.microsoft:
        return Stores.microsoft;
      case StoreEnum.epic:
        return Stores.epic;
      case StoreEnum.play:
        return Stores.play;
    }
  }
}

class Store {
  const Store(this.name, this.image, this.id, this.storeEnum);
  final int id;
  final StoreEnum storeEnum;
  final String name;
  final String image;
}

enum StoreEnum { steam, epic, microsoft, play }
