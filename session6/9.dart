// Library Management System
// Create a system to manage books in a mylibrary.
// Implement a Book class with properties like title, author, isbn, and isAvailable.
// Implement a Library class with methods:
// - addBook(Book book): Adds a book to the mylibrary.
// - borrowBook(String isbn): Marks a book as borrowed if available.
// - returnBook(String isbn): Marks a book as available again.
// - searchByTitle(String title): Returns books matching the title.
// Ensure that the system correctly updates the book's availability.
void main() {
  Book book1 = Book('zekola', 'khaled', "123ghf", true);
  Book book2 = Book('zekola2', 'khaled2', "123ghf2", true);
  Book book3 = Book('zekola3', 'khaled3', "123ghf3", true);
  Book book4 = Book('zekola4', 'khaled4', "123ghf4", true);
  Book book5 = Book('zekola5', 'khaled5', "123ghf5", true);
  Book book6 = Book('zekola6', 'khaled6', "123ghf6", true);
  Book book7 = Book('zekola7', 'khaled7', "123ghf7", true);

  Library mylibrary = Library();

  mylibrary.addBook(book7);
  mylibrary.addBook(book6);
  mylibrary.addBook(book5);
  mylibrary.addBook(book4);
  mylibrary.addBook(book3);
  mylibrary.addBook(book2);
  mylibrary.addBook(book1);

  mylibrary.borrowBook('123ghf3');
  mylibrary.getBookList();
  mylibrary.returnBook('123ghf');
  mylibrary.returnBook('123ghf3');
  mylibrary.searchByTitle('zekola');
  mylibrary.removeBook('isbn');
  mylibrary.removeBook('123ghf5');
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);

  void details() {
    print(
        "Book title: $title | Author: $author | ISBN: $isbn | Available: $isAvailable");
  }

//////////////need explain
  @override
  String toString() {
    return "Book(title: $title, author: $author, ISBN: $isbn, Available: $isAvailable)";
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book newbook) {
    if (books.any(
        (book) => book.isbn == newbook.isbn || book.title == newbook.title)) {
      print('Book already in list');
    } else {
      books.add(newbook);
      print("Current book list:");
      for (var book in books) {
        book.details();
      }

      print("book added successfuly");
    }
  }

  void borrowBook(String isbn) {
    Book book = books.firstWhere(
      (book) => book.isbn == isbn,
    );
    if (book.isAvailable) {
      book.isAvailable = false;
      print('Book has been reserved successfully');
    } else {
      print('Book is not available');
    }
  }

  void returnBook(String isbn) {
    Book? book = books.firstWhere(
      (b) => b.isbn == isbn,
    );

    if (book.title != '') {
      if (!book.isAvailable) {
        book.isAvailable = true;
        print('Book has been returned successfully');
      } else {
        print('Book is not reserved');
      }
    } else {
      print('Book with ISBN $isbn not found');
    }
  }

  void searchByTitle(String title) {
    if (books.any((book) => book.title == title)) {
      Book? book = books.firstWhere(
        (b) => b.title == title,
      );
      book.details();
    } else {
      print('Book not found');
    }
  }

  void getBookList() {
    print("Current book list:");
    for (var book in books) {
      book.details();
    }
  }

  void removeBook(String isbn) {
    if (books.any((book) => book.isbn == isbn)) {
      Book? book = books.firstWhere(
        (book) => book.isbn == isbn,
      );
      books.remove(book);
      print("Book has been deleted successfully\nCurrent book list:");
      for (var book in books) {
        book.details();
      }
    } else {
      print('Book with ISBN $isbn not found');
    }
  }
}
