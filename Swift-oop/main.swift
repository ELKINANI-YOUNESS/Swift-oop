// Création des livres
let book1 = Book(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", ISBN: "9780590353427")
let book2 = Book(title: "The Hobbit", author: "J.R.R. Tolkien", ISBN: "9780547928227")

// Création des membres de la bibliothèque
let member1 = LibraryMember(name: "John Doe", memberID: "1234")
let member2 = LibraryMember(name: "Jane Smith", memberID: "5678")

// Création de la bibliothèque
let library = Library()

// Ajout des livres à la bibliothèque
library.addBook(book: book1)
library.addBook(book: book2)

// Ajout des membres à la bibliothèque
library.addMember(member: member1)
library.addMember(member: member2)

// Emprunter un livre
library.borrowBookForMember(bookTitle: "Harry Potter and the Sorcerer's Stone", memberID: "1234")
library.borrowBookForMember(bookTitle: "The Hobbit", memberID: "5678")

// Vérifier les livres empruntés par un membre
member1.checkBorrowedBooks()
member2.checkBorrowedBooks()

// Retourner un livre
library.returnBookForMember(bookTitle: "Harry Potter and the Sorcerer's Stone", memberID: "1234")

// Vérifier à nouveau les livres empruntés par un membre
member1.checkBorrowedBooks()
member2.checkBorrowedBooks()
