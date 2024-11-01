class BookModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final String publisher;
  final String publishedDate;
  final String description;
  final int pageCount;
  final List<dynamic> categories;
  final List<dynamic> authors;
  final String previewLink;

  BookModel({
    this.image,
    this.title,
    this.subtitle,
    this.publisher = '',
    this.publishedDate = '',
    this.description = '',
    this.pageCount = 0,
    this.categories = const [],
    this.authors = const [],
    this.previewLink = '',
  });

  factory BookModel.fromJson(Map<String, dynamic> book) {
    const String fallbackUrl = 'https://books.google.com.eg/books?id=uZmSEAAAQBAJ&pg=PA127&dq=general&hl=&cd=1&source=gbs_api#v=onepage&q=general&f=false';
    final String? previewLink = book['volumeInfo']['previewLink'];
    return BookModel(
      image: book['volumeInfo']['imageLinks']?['smallThumbnail'],
      title: book['volumeInfo']['title'],
      subtitle: book['volumeInfo']['subtitle'],
      publisher: book['volumeInfo']['publisher'] ?? '',
      publishedDate: book['volumeInfo']['publishedDate'] ?? '',
      description: book['volumeInfo']['description'] ?? '',
      pageCount: book['volumeInfo']['pageCount'] ?? 0,
      categories: book['volumeInfo']['categories'] ?? [],
      authors: book['volumeInfo']['authors'] ?? [],
      previewLink: Uri.tryParse(previewLink ?? fallbackUrl)?.toString() ?? fallbackUrl,
    );
  }
}
