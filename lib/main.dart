import 'book.dart';

void main() {
  Book book1 = Book(
    title: '1984',
    author: 'George Orwell',
    publicationYear: 1949,
  );

  Book book2 = Book(
    title: 'Brave New World',
    author: 'Aldous Huxley',
    publicationYear: 1932,
  );

  Book book3 = Book(
    title: 'Fahrenheit 451',
    author: 'Ray Bradbury',
    publicationYear: 1953,
  );

  book1.read(100);
  book2.read(150);
  book3.read(75);

  List<Book> books = [book1, book2, book3];
  for (var book in books) {
    print('Title: ${book.getTitle()}');
    print('Author: ${book.getAuthor()}');
    print('Publication Year: ${book.getPublicationYear()}');
    print('Pages Read: ${book.getPagesRead()}');
    print('Book Age: ${book.getBookAge()} years\n');
  }

  print('Total Books Created: ${Book.getTotalBooks()}');
}
