# Linked List Challenge

Notes:

* Stopped fighting with my Rakefile and started running tests with `rspec`.
* Sort works.
* Would like to optimize sort.
    * Check to see if a list is sorted before starting the next round of bubbling.
    * Bubble to one fewer place each time through as the highest number should always have bubbled as high as it will go.
* Still need to implement Stack/Queue/File IO
* Would like to standardize code style (e.g. using `@` to access instance variables vs. using `attr_reader` from within the class, etc.)
* Could probably still use a refactor.
    * Clean up separation of responsibility between Node and LinkedList.
    * Clean up method names/organization of code.
