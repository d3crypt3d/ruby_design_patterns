# Design Patterns
Examples from the book **Head First Design Patterns** by *Eric&Elizabeth Freeman* are rewrited in Ruby.

Bare majority of the original GoF design patterns are covered here. 

## Table of contents
1. [Strategy](#strategy)
2. [Observer](#observer)
3. [Decorator](#decorator)
4. [Factory](#factory)
5. [Abstract Factory](#abstract-factory)
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

---
### STRATEGY

**The Strategy Pattern** defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it. 

---
### OBSERVER

**The Observer Pattern** defines a one-to-many dependency between objects so that when one object changes state, all of its dependents are notified and updated automatically.

---
### DECORATOR

**The Decorator Pattern** attaches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

---
### FACTORY
**The Factory Method Pattern** defines an interface for creating an object, but lets subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.

---
### ABSTRACT FACTORY
**The Abstract Factory Method** provides an interface for creating families of related or dependent objects without specifying their concrete classes. 

---
### SINGLETON
**The Singleton Pattern** ensures a class has only one instance, and provides a global point of access to it.

---
### COMMAND
**The Command Pattern** encapsulates a request as an object, thereby letting you parametrize other objects with different requests, queue or log requests, and support undoable operations.

---
### ADAPTER
**The Adapter Pattern** converts the interface of a class into another interface the clients expect. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces. 

---
### FACADE
**The Facade Pattern** provides a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.

---
### TEMPLATE
**The Template Method Pattern** defines the skeleton of an algorithm in a method, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorith without changing the algorithm's structure. 

---
### ITERATOR
**The Iterator Pattern** provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

---
### COMPOSITE
**The Composite Pattern** allows you to compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.

---
### STATE
**The State Pattern** allows an object to alter its behaviour when its internal state changes. The object will appear to change its class.

---
### PROXY
**The Proxy Pattern** provides a surrogate or placeholder for another object to control access to it.
