class BlogRoutePath {
  final String? pathName;
  final bool isUnknown;

  BlogRoutePath.home()
      : pathName = null,
        isUnknown = false;

  BlogRoutePath.otherPage(this.pathName) : isUnknown = false;

  BlogRoutePath.unknown()
      : pathName = null,
        isUnknown = true;

  bool get isHomePage => pathName == null;
  bool get isOtherPage => pathName != null;
}
