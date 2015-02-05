---
tags: arrays, iteration, hashes, conditionals, nested_structures, bonus
languages: ruby
resources: 6
---

# Nested Data Structures Practice

### Skills: iteration, arrays, hashes, conditionals, nested data structures

## Instructions

You are given a hash where the keys are the styles of the languages and the values are also hashes. These nested hashes have a key of the name of the language and value of the languages attributes, which is also a hash. These inner-most hashes have keys, value pairs of type and type value. Take a look:

```ruby
{
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
```

Iterate over the hash and insert the language as keys in a new hash along with an array of styles that language is a part of.  It should match the following format:

```ruby
{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}
```

## Resources

#### Arrays

* [[] method](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-5B-5D)
* [<< method](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-3C-3C)
* [Iteration](http://stackoverflow.com/a/310638/2890716)

#### Hashes

* [[]= method](http://www.ruby-doc.org/core-2.2.0/Hash.html#method-i-5B-5D)
* [[] method](http://www.ruby-doc.org/core-2.2.0/Hash.html#method-i-5B-5D)
* [Iteration](http://stackoverflow.com/a/9279884/2890716)
