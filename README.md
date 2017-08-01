# Big Nerd Ranch Swift - Chapter 18 - Value vs Reference Types

#### Learning Highlights
* string is a struct (see Documentation) which means String is a value type.  Array, Dictionary, Int and String are all implemented as structs so are all value types.
* when you assign an instance of a class to a constant or variable, that constant or variable gets a reference to the instance
* value types declared as constants cannot have their properties changed, even if they are declared with var in the type's original implementation.
* copies in Swift are shallow (no support to make deep copies); shallow copying does not create a distinct copy of an instance--it provides a duplicate of the instance's reference


##### Equality vs Identity
* equality referes to two instances having the same values for their observable characteristics such as two instances of the String type that have the same text
* identity refers to whether two variables or constants point to the same instance in memory
* two constants or variables can be equal (have same values) yet not be identical (may point to different instances of a given type)

##### Using Structs vs Classes
Generally... 
1) if you want a type to be passed by value, use a struct.  this makes sure the type is copied when assigned or passed into a function's argument.
2) if the type does not need to support subclasses inheriting from it, then use a struct.
3) if behavior you want to represent in a type is relatively straightforward and encompasses a few simple values, consider starting with a struct.  you can change to a class later if needed.
4) use class in other cases.
