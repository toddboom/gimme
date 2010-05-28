# Gimme

Ever find yourself inside a Rails console wishing you could quickly find something other than #first or #last?

Gimme extends ActiveRecord and lets you call #random so you can quickly summon arbitrary records to quickly hone your console-fu.


## Examples

Usage is pretty straight forward.  Let's say we have an ActiveRecord model called User, then we can do:

    User.random   # => [#<User id: 1379, ...>]

Or if one just simply isn't enough for you:

    User.random(:limit => 3)   # => [#<User id: 92, ...>, #<User id: 314, ...>, #<User id: 191, ...>]

All other options are passed along unharmed.


## Notes

Gimme's #random currently maps to #find(:all), so you'll always get back an array.


## Copyright

Copyright (c) 2010 Todd Persen. See LICENSE for details.
