# Design Patterns
Examples from the book **Head First Design Patterns** by *Eric&Elizabeth Freeman* rewrited in Ruby.

Bare majority of the original GoF design patterns is covered in this book. 

## Table of contents
1. [Strategy](#strategy)
2. [Observer](#observer)
3. [Decorator](#decorator)
4. [Factory](#factory)
5. [Abstract Factory](#abstract_factory)
6. [Singleton](#singleton)
7. [Command](#command)
8. [Adapter](#adapter)
9. [Facade](#facade)
10. [Template](#template)
11. [Iterator](#iterator)
12. [Composite](#composite)
13. [State](#state)
14. [Proxy](#proxy)

## Design Principles
1. Identify the aspects of your application that vary and separate them from what stays the same. (Encapsulate what varies.)
2. Program to an interface, not an implementation.
3. Favor composition over inheritance.
4. Strive for loosely coupled designs between objects that interact.
5. Classes should be open for extension, but closed for modification. 
6. Depend upon abstraction. Don't depend upon concrete classes.
7. Principle of Least Knowledge - talk only to your immediate friends. (Only talk to your friends.)
8. The Hollywood Principle - Don't call us, we'll call you.
9. A class should have only one reason to change.

### STRATEGY

**The Strategy Pattern** defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it. 
