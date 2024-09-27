class Book {
  static int totalBooks = 0;

  String title;
  String author;
  int publicationYear;
  int pagesRead;

  Book({
    required this.title,
    required this.author,
    required this.publicationYear,
    this.pagesRead = 0,
  }) {
    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    final currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }

  static int getTotalBooks() {
    return totalBooks;
  }
}
