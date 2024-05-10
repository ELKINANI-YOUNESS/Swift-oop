class Book {
    var title: String
    var author: String
    var ISBN: String
    var isAvailable: Bool

    init(title: String, author: String, ISBN: String) {
        self.title = title
        self.author = author
        self.ISBN = ISBN
        self.isAvailable = true
    }

    func markAsBorrowed() {
        if isAvailable {
            isAvailable = false
            print("\(title) has been borrowed.")
        } else {
            print("\(title) is already borrowed.")
        }
    }

    func markAsReturned() {
        if !isAvailable {
            isAvailable = true
            print("\(title) has been returned.")
        } else {
            print("\(title) is already available.")
        }
    }

    func getDetails() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("ISBN: \(ISBN)")
        print("Availability: \(isAvailable ? "Available" : "Not Available")")
    }
}

class LibraryMember {
    var name: String
    var memberID: String
    var borrowedBooks: [Book]

    init(name: String, memberID: String) {
        self.name = name
        self.memberID = memberID
        self.borrowedBooks = []
    }

    func borrowBook(book: Book) {
        if book.isAvailable {
            borrowedBooks.append(book)
            book.markAsBorrowed()
        } else {
            print("\(book.title) is not available for borrowing.")
        }
    }

    func returnBook(book: Book) {
        if let index = borrowedBooks.firstIndex(where: { $0 === book }) {
            borrowedBooks.remove(at: index)
            book.markAsReturned()
        } else {
            print("\(book.title) is not borrowed by \(name).")
        }
    }

    func checkBorrowedBooks() {
        if borrowedBooks.isEmpty {
            print("\(name) has no borrowed books.")
        } else {
            print("\(name) has borrowed the following books:")
            for book in borrowedBooks {
                print("- \(book.title) by \(book.author)")
            }
        }
    }
}

class Library {
    var availableBooks: [Book]
    var members: [LibraryMember]

    init() {
        self.availableBooks = []
        self.members = []
    }

    func addBook(book: Book) {
        availableBooks.append(book)
    }

    func addMember(member: LibraryMember) {
        members.append(member)
    }

    func searchBook(byTitle title: String) -> Book? {
        return availableBooks.first(where: { $0.title == title })
    }

    func searchBook(byAuthor author: String) -> [Book] {
        return availableBooks.filter({ $0.author == author })
    }

    func borrowBookForMember(bookTitle: String, memberID: String) {
        if let book = searchBook(byTitle: bookTitle) {
            if let member = members.first(where: { $0.memberID == memberID }) {
                member.borrowBook(book: book)
            } else {
                print("Member with ID \(memberID) is not registered.")
            }
        } else {
            print("Book with title \(bookTitle) is not available.")
        }
    }

    func returnBookForMember(bookTitle: String, memberID: String) {
        if let book = searchBook(byTitle: bookTitle) {
            if let member = members.first(where: { $0.memberID == memberID }) {
                member.returnBook(book: book)
            } else {
                print("Member with ID \(memberID) is not registered.")
            }
        } else {
            print("Book with title \(bookTitle) is not available.")
        }
    }
}
