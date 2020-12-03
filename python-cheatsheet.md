### Lists []
```python
l.append() # Adds an item
l.count() # Count how many times in the list
l.extend() # With append you got a list inside another one, extend only adds elements
l.index() # Return the index of the argument
l.insert(index, object) # appends and object at index
l.pop() # Pop the last element of the last by default, we can pass in an index
l.remove() # Remove the first ocurrence of a value
l.reverse() # Reverses the index
l.sort() # Sorts the list
```

### Sets {}
```python
s = set() # Unique elements
s.add(1) # Adding elements
s.clear() # Remove all elements
s.copy() # Returns a copy of the set
s.difference(another_set) # Comparing to set's elements
set1.difference_update(set2) # Removing the elements found in set2
s.discard(2) # It will remove an element from the set
s.intersection() # Return the intersection and creates a new set
s1.isdisjoint(another_set) # Boolean if they have a null intersection
s.issubset(s2) # If s2 is contain within s
s.symmetric_difference(s2) # Element that is only in one of the sets
s.union(s2) # Union of the set
s1.update(s2)
```

### String ""
```python
s.capitalize()
s.upper() # Every letter
s.lower()
s.count('o') # How many o's
s.find('o') # Find the first o
s.center(20, 'z') # Length of 20 between z's
\ # Tab
s.isalnum() # is alphanumeric
s.isalpha() # only alphabetic
s.islower() # All are lowercase
s.isspace() # All characters are whitespaces
s.title() # Return if s is a title 
s.upper() # All are uppercase
s.endswith('o') # Ends with a 0
s.split() # Split all elements and return a list
s.partition() # Split only at the first instance
s.isdigit()
s.extend(list) # This is like append but for several values
s.isupper()
s.title() # Capitalizes the first letter for each word

print(f'this is a string{var.2.2f})
print('String {}'.format('var')
print(f'String {var}')
print(f'String {var!r}') #String representation
print('String {0:spaces.decimalsf}'.format('var')
print(f'String {var:{spaces}.{numbers}')
print(f'String {var:spaces.decimalsf}')
print(f"{var:sd} # Print in decimal
print(f"{var:so} # Print in octal
print(f"{var:sx} # Print in hexadecimal
print(f"{var:sb} # Print in binary
```

### Dict {}
```dict = {'key1':'value1','key2':'value2'}```

### Functions
```python
str()
list()
set() # unique values
len()
type()
range()
input()
help()
abs()
sorted()
zip()
min()
max()
sorted() # Sorts a list, from low to high, for high to low -> sorted([list], reverse = True)
from random import suffle
shuffle()
randint()
enumerate(lst) # Enumerates each item from the list starting from 0
all(lst) # All elements are True
any(lst) # At least one element is True
complex() # Return a complex number with the value real
Couter() # from collections import Counter, instances of items, Counter(lst)
Couter(words).most_common(num) # The num most common
help(var.method) returns what that method does
''.join()
.join()
```

#### map()
It is a built-in Python function that takes in two or more arguments: a function and one or more iterables, in the form: map(function, iterable, ...)

```python
map(function,list) # Allows you to call a function for every item
list(map(function,lst))
```

#### zip()
```python
x = [1,2,3]
y = [4,5,6]
list(zip(x,y))
[(1, 4), (2, 5), (3, 6)]
```

#### lambda
```python
lambda input: input ** 2
var = lambda input: input ** 2 --> var(input) --> returns result
list(map(lambda input: input ** 2, list))
list(filter(lambda input: input % 2 == 0,list))
```

#### filter()
```python
list(filter(lambda x: x%2==0,lst))

list(filter(check_even,nums)) #Returns only those items for which functions is true
```
#### reduce()
```python
lst =[47,11,42,13]
reduce(lambda x,y: x+y,lst)
max_find = lambda a,b: a if (a > b) else b
reduce(max_find,lst)
# we keep reducing the sequence until a single final value is obtained
```
### Symbols
%s string
%r representation
\n Enter space
+= self addition
-= self substraction
& and
| or
\t tab

Exploring built-in modules
print(dir(math))
help(math.ceil)

### OOP

#### Classes
Class      | Universal Specific
Objetc     | Also called instance
Attributes | Propierties from a class and inheritance by the object
Methods	   | Actions the object makes, part of the clas

#### Difference between Functions vs. Method
F: Many parameters
M: The object is one of its parameters

F: Exists by itself
M: Belongs to a class

F: function()
M: object.method()
   object.attribute

#### OOP Steps
1. Create a class
2. Define attributes
3. Define methods
4. Create an object
5. Call functions or attributes 
	object.attribute
	object.method()	 

#### Instance
```pythpn
sam = Class(attribute='Lab') # Creating an instance
sam.attribute # This is how we call
```

#### Solution to an exercise
1. Create an input as rawLst
2. Create a list
3. Transforma list into an array
4. Append to the list as a number
5. Return a string with replace

#### Programs 
- Display something visual to the user (Updated Visual Representation)
- Let the user update through an interaction (User Input)
- Update variables in the program (Function)
- Display update visual (Updates)

#### Inheritance
Inheritance is a way to form new classes using classes that have already been defined. The newly formed classes are called derived classes, the classes that we derive from are called base classes. Important benefits of inheritance are code reuse and reduction of complexity of a program. The derived classes (descendants) override or extend the functionality of base classes (ancestors).
```python
class Animal:
    def __init__(self):
        print("Animal created")

    def whoAmI(self):
        print("Animal")

    def eat(self):
        print("Eating")


class Dog(Animal):
    def __init__(self):
        Animal.__init__(self)
        print("Dog created")

    def whoAmI(self):
        print("Dog")

    def bark(self):
        print("Woof!")
```

#### Polymorphism
We've learned that while functions can take in different arguments, methods belong to the objects they act on. In Python, polymorphism refers to the way in which different object classes can share the same method name, and those methods can be called from the same place even though a variety of different objects might be passed in. You may use it when opening different files but sharing the same method name of open.

#### Specific methods
The __init__(), __str__(), __len__() and __del__() methods
These special methods are defined by their use of underscores. They allow us to use Python specific functions on objects created through our class.


#### if __name__ == "__main__":
Sometimes when you are importing from a module, you would like to know whether
a modules function is being used as an import, or if you are using the original
.py file of that module. In this case we can use the:
      if __name__ == "__main__":

### Exploring built-in modules
```python
print(dir(math))
help(math.ceil)
```
### Decorators
They are on/off switchs that allow you to add new functionalities to already existing functions without the need to change them
@decorators

### Generators
They are useful when we don't want to return an entire long list of values stored in memory, we just want them print, it is more memory efficient, specially if we have long lists. Instead of return, we use the word yield

```python
def genfibon(n):
    """
    Generate a fibonnaci sequence up to n
    """
    a = 1
    b = 1
    for i in range(n):
        yield a
        a,b = b,a+b
for num in genfibon(10):
    print(num)
```

### Error and Exception Handling
You want your code to report the error and continue with the code. We've got three keywords:
```python
try: # This is the block of code to be attempted (may lead to an error)
except: # Block of code will execute in case there is an error in try block
finally: # A final block of code to be executed, regardless of an error
```

### Pylint
Just a quick update on the Pylint library. To see the same report that I do in the video, in the newest version of PyLint you need to add -r y (report yes) at the end of the command, so the full command should be:
It is a library that looks in your code and reports back possible issues.
This is how you test your file:
pylint myexample.py -r y

### Checkout modules
from collections import Counter
from collections import defaultdict
from collections import namedtuple
import os
import shutil
import send2trash
import math
import random
import datetime
import pdb
import textwrap

### re library
When we are looking for patterns, the re library allows us to create specialized patter strings and then search for matches within text
Phone Number
(555)-555-5555
Regex Pattern 
r"(\d\d\d)-\d\d\d-\d\d\d\d"
r"(\d{3})-d\{3}-\d{4}"


import re
re.search(pattern,text)
We can save it into a variable
match = r.search(pattern,text)
match.span()
match.start()
match.end()
matches = re.findall('phone', text)
len(matches)
for match in re.finditer('patter', text)

#### Patterns
phone = re.search(r'\d\d\d-\d\d\d-\d\d\d\d',text)
phone.group()
'408-555-1234'

#### Quantifiers
re.search(r'\d{3}-\d{3}-\d{4}',text)
Lesson 109, 110, 111
{2,4} Occurs 2 to 4 times
{3,} Occurs 3 or more
\* Occurs zero or more times
? Once or none

#### Groups 
The groups are in parenthesis
```python
phone_pattern = re.compile(r'(\d{3})-(\d{3})-(\d{4})') 
results = re.search(phone_pattern,text)
results.group()
results.group(1)
results.group(2)
results.group(3)
results.group(4)
```

#### Or operator
re.search(r"man|woman","This man was here.")

#### Wildcard Character
.at
re.findall(r".at","The cat in the hat sat here.")
We can add more wildcards ... as much as needed
\S+at One or more non-whitespace that ends with 'at' it is better than ...
^\d Starts with a number/digit
\d$ End with a number/digit
\S+at

#### Exclude
```python
re.findall(r'[^\d]',phrase)
re.findall('[^!.? ]+',test_phrase) Exclude all those punctuations and spaces
clean = ' '.join(re.findall('[^!.? ]+',test_phrase))
```
#### Brackets for Grouping Exclusion
```python
text = 'Only find the hypen-words in this sentence. But you do not know how long-ish they are'
re.findall(r'[\w]+-[\w]+',text)
```
#### Parenthesis for multiple options
```python
text = 'Hello, would you like some catfish?'
texttwo = "Hello, would you like to take a catnap?"
textthree = "Hello, have you seen this caterpillar?"

re.search(r'cat(fish|nap|claw)',text)
re.search(r'cat(fish|nap|claw)',texttwo)
re.search(r'cat(fish|nap|claw)',textthree)
```
