class SortingAlgorithm {
  String title, complexity;
  List<Resource> resources;
  SortingAlgorithm(
      {required this.title,
      required this.complexity,
      this.resources = const []});
}

class Resource {
  String title, url;
  Resource(this.title, this.url);
}
