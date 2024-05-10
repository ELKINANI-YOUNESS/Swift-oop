# Swift-oop
# Gestion de bibliothèque en Swift

Ce projet est une implémentation en Swift d'un système de gestion de bibliothèque orienté objet (POO). Il permet de gérer les livres, les membres de la bibliothèque et les transactions associées telles que les emprunts et les retours.

## Classes

### Book (Livre)

- Attributs : titre, auteur, numéro ISBN, disponibilité.
- Méthodes : marquer comme emprunté, marquer comme retourné, obtenir les détails du livre.

### LibraryMember (Membre de la bibliothèque)

- Attributs : nom, numéro de membre, liste des livres empruntés.
- Méthodes : emprunter un livre, retourner un livre, vérifier les livres empruntés.

### Library (Bibliothèque)

- Attributs : liste des livres disponibles, liste des membres inscrits.
- Méthodes : ajouter un livre à la bibliothèque, ajouter un membre, rechercher un livre par titre ou auteur, gérer les emprunts et les retours.

## Utilisation

1. Créez des instances de `Book`, `LibraryMember` et `Library`.
2. Ajoutez des livres à la bibliothèque à l'aide de la méthode `addBook`.
3. Ajoutez des membres à la bibliothèque à l'aide de la méthode `addMember`.
4. Utilisez les méthodes appropriées pour emprunter et retourner des livres.

## Exemple

```swift
// Exemple d'utilisation

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

// Vérifier les livres empruntés par un membre
member1.checkBorrowedBooks()
```

## Auteur

Ce projet a été développé par [Youness Elkinani].

