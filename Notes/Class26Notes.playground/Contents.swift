
import UIKit


                        ////// CLASS 26 \\\\\
                        ////// Objective-C \\\
                        ////// 11/14/16  \\\\\\



/*
 #NOTES:
 
 
*** Classes, Objects, Methods ***
 - create instance
    -- Person *person = [[Person alloc]init];
        -> "alloc" gives us memory space for the instance created(receiver)
        -> "init" does the initializing(sender)
        ->
 - Instance Methods
    -- [person walk];
    -- [person talk];
        -> person = sender
        -> walk = receiver
 * Objects are unique representations from a class and each object contains some info that is typically private to that object. The methods provide the means of accessing and changing that data.
 
 - a name of a class or instance of that class is followed by the method you want to perform
 - when asking a class or instance to perform...you say that you are "sending it a message"
 
 * @interface *
    - describes the class and its methods
    - typically in the .h(header) file
    - must tell OBJC cimpliler where the class came from(name its parent class --> NSObject
    - you neeed to define the type of operations, or methods, that can be used when working w/ objects from this class
 
 * @implementation *
    - describes the data(instance variables that objects from the class will store)
    - contains code that implements the methods declared in the interface section
    - contains actual code declared in @interface
    - start by identifying class or instance
 
 ** Methods **
    - leading minus sign(-) tells the OBJC compiler that the method is an instance method
    - leading plus sign(+) tells the OBJC compiler that the method is a type method
 
** alloc **
    - short for "allocate" you want to allocate memory storage space
    - sends a message to created class
 
 ** init **
    - initializes an instance of a class. Sending the init messafe to Person instance
  
 "*" is a pointer to a reference

 
 ** Data Types and Expressions **
 - any literal number, single character, etc
 - number 58 represents a constant integer value
 - @"Programming is fun" is a "string constant"
 - expression @5 is a constant number object
 - "id" data type is used to store an object of any type
    -- "generic object type
    -- basis for polymorphism and dynamic binding
 
 * data types do not require * when you initialize them *
    - do not need to capitalize (int, double, float, char)
 
 ** Statements **
 - for(traditional for loop is back, as well as ++, --)
 - while(may not fire off, only if statement satisfied)
 - do(fires off at least once)

 
 ** Making Decision **
 - if
 - switch(NSInteger only)
 - conditional operator
 
 ** Inheritance **
 - all the classes are descendatns of the root class called NSObject(in contrast with Swift)
 - can define own root class, but something you normally wouldn't do
 - oftent used to extend a class
 
 ** Abstract Classes **
 - sometimes created to make it easier for someone to create a subclass
 - for that reason, these classes are called abstrac classes or, equivalently abstract superclasses
 - NSNumber is an abstract class that was created for working with numbers as objects
 - separate subclasses of NSNUmber exist for each numeric type
 - because these subclasses(unlike their abstract superclasses) exists
 
 ** Initialization **
 - common for all inits to begin with "init"
 - init invokes the parent first
    -- ensures that any inherited insatance variable are properly initialized
 - must assign the result of executing the parent's init
 - if class has more than one initializer..one of them should be your "designated initilaizer"
 - init is designed as an instance type
 
* Global, External, Static Variables *
 - Global
    -- if declared at the beginning of program, can be accessed anywhere in the module
 - External
    -- one whose value can be accessed and changed by any other methods or functions
    -- inside the module that wants to access the external variable(extern placed before declaration)
    -- can only define it once
 - Static
    -- global, but not external
 
 * Enum *
 - range of values to specify a range of values that are assigned to a var
 - to declare a var of type "enum flag"
    -- enum flag matchFound;
    -- only values of enum flag can be "true, false"
 - types
    -- can assign the integer to the identifier when data type is defined
        -> enum direction { up, down, left = 10, right }; // up=0, down=1, left=10, right=11
    -- can share the same value
        -> enum boolean { no = 0, false = 0, yes = 1, true = 1 };

 * typedef *
 - "naming a type as another type"
 - capability ythat enbales programmeers to assign an alternative name to a data type
 - typedef int Counter;
 - can typedef out completion handlers..
 
 ** Catgories and Protocols **
 - categories are extensions in Swift
    -- can override(considered poor practice)
    -- as many categories as you'd like
    -- extending a class by adding new methods with a category affects not just that class, but all its superclasses
 * Protocols *
    - list of methods that ois shared amnong classes
    - can be optional and/or required
    - adoptiing to all of the particular protocol, means you implement all of the required methods

 
 */












