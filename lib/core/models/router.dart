class RouterItem {
  final String title;
  final String path;
  final String router;
  final bool protected;
  final bool? displayInNav;
  final List<String>? roles;
  final List<RouterItem>? children;

  const RouterItem({
    required this.title,
    required this.path,
    required this.router,
    this.protected = false,
    this.displayInNav,
    this.roles,
    this.children,
  });
}
