enum Pages {
  home,
  cards,
  account,
}

extension PagesPatternMatch on Pages {
  T when<T>({
    required T Function() home,
    required T Function() cards,
    required T Function() account,
  }) {
    switch (this) {
      case Pages.home:
        return home();
      case Pages.cards:
        return cards();
      case Pages.account:
        return account();
    }
  }
}
