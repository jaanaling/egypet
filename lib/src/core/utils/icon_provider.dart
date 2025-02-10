enum IconProvider {
  artic(imageName: 'artic.png'),
  back(imageName: 'back.png'),
  bubble(imageName: 'bubble.png'),
  clear(imageName: 'clear.png'),
  cleo(imageName: 'cleo.png'),
  close(imageName: 'close.png'),
  d1(imageName: 'd1.png'),
  d2(imageName: 'd2.png'),
  gallery(imageName: 'gallery.png'),
  read(imageName: 'read.png'),
  title(imageName: 'title.png'),
  trip(imageName: 'trip.png'),
  fa(imageName: "fa.png"),
  photo(imageName: 'photo.png'),
  favour(imageName: 'favour.png'),

  unknown(imageName: '');

  const IconProvider({
    required this.imageName,
  });

  final String imageName;
  static const _imageFolderPath = 'assets/image';

  String buildImageUrl() => '$_imageFolderPath/$imageName';
  static String buildImageByName(String name) => '$_imageFolderPath/$name';
}
