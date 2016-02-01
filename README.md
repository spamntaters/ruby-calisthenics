Ruby Calisthenics
=================

The goal of this multi-part assignment is to get you accustomed to basic
Ruby coding and introduce you to RSpec, the unit testing tool we will be
using heavily.

While we provide an explanation of how your code should work in this
handout, you should get accustomed to the idea that the true
specification is in the test files!

Therefore, we suggest you work on this assignment using `autotest`,
which automatically re-runs all the RSpec tests each time you make
changes to your code:

1. In a terminal window, change to the root directory of this homework
(the one containing subdirectories `lib/` and `spec/`) and run the
command `autotest`.  RSpec expects to find code files under `lib/` and
the corresponding spec files under `spec/`.

2. Initially, all tests are marked
"pending", as indicated by the argument `:pending => true` in each
`describe` block.  To start working on a question, remove this option:


e.g. in `fun_with_strings_spec.rb`, change:

    describe 'palindrome detection', :pending => true do

to

    describe 'palindrome detection' do

and save the spec file.  `autotest` will
detect the change and automatically re-run the tests in that group, which
will now fail (displayed in red) since you haven't written any code yet.

3. As you fill in code in the appropriate files under `lib/`, each time
you save changes to that file the tests will automatically be re-run.
When a test passes, it's displayed in green.  Your goal is to get all
tests for all parts to pass green.

(Note: when you submit your assignment, we may also run additional
test cases beyond the ones given here.)

# Part 1: Fun With Words and Strings

Specs: `spec/fun_with_strings_spec.rb`

Skeleton: `lib/fun_with_strings.rb`

In this problem, you'll implement three functions that perform
basic string processing.  You can start from the template
`fun_with_strings.rb`.

## Part A: Palindromes

A palindrome is a word or phrase that reads the same forwards as
backwards, ignoring case, punctuation, and nonword characters.  (A
"nonword character" is defined for our purposes as "a character that
Ruby regular expressions would treat as a nonword character".) 

You will write a method `palindrome?` that returns true iff its
receiver is a palindrome.

As you can see in the template `fun_with_strings.rb`, we arrange to mix
your method into the `String` class so it can be called like this:

    "redivider".palindrome?    # => should return true
    "adam".palindrome?         # => should return false or nil

Your solution shouldn't use loops or iteration of any kind. Instead, you
will find regular-expression syntax very useful; it's reviewed briefly
in the book, and the [Rubular](http://www.rubular.com) website
lets you try out Ruby
regular expressions "live". Some methods that you might find useful
(which you'll have to look up in the [Ruby
documentation](http://ruby-doc.org)) include
`String#downcase`, `String#gsub`, and `String#reverse`.

The spec file contains a number of test cases.  At a minimum, all should
pass before you submit your code.  We may run additional cases as well.

## Part B:  Word Count

Define a function `count_words` that, given an input string, return a
hash whose keys are words in the string and whose values are the number
of times each word appears:

    "To be or not to be"  # => {"to"=>2, "be"=>2, "or"=>1, "not"=>1}

Your solution shouldn't use for-loops, but iterators like `each` are
permitted. As before, nonwords and case should be ignored. A word is
defined as a string of characters between word boundaries. 

## Part C:  Anagrams

An anagram group is a group of words such that any one can be converted
into any other just by rearranging the letters.  For example, "rats",
"tars" and "star" are an anagram group.

Given a space separated list of words in a single string,
write a method that groups them into anagram groups 
and returns a nested array of those groups (an array of arrays).
Case doesn't matter in classifying string as anagrams
(but case should be preserved in the output),
and the order of the anagrams in the groups doesn't matter. 

# Part 2: Basic Object-Oriented Programming for Dessert

Specs: `spec/dessert_spec.rb`

Skeleton: `lib/dessert.rb`

1. Create a class Dessert with getters and setters for name and
calories.  The constructor should accept arguments for name and
calories.  

2. Define instance methods `healthy?`, which returns true iff a
dessert has less than 200 calories, and `delicious?`, which returns true
for all desserts. 

3. Create a class JellyBean that inherits from Dessert.  The constructor
should accept a single argument giving the jelly bean's flavor; a
newly-created jelly  bean should have 5 calories and its name should be
the flavor plus "jelly bean", for example, "strawberry jelly bean".

4. Add a getter and setter for the flavor. 

5. Modify `delicious?` to return false if the flavor is
`licorice`, but true for all other flavors.  The behavior of
`delicious?` for non-jelly-bean desserts should be unchanged.
