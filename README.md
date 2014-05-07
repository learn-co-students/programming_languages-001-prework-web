---
  tags: arrays, iteration, hashes, conditionals, nested_structures
  languages: ruby
---

# Nested Data Structures Practice

### Skills: iteration, arrays, hashes, conditionals, nested data structures

## Instructions

You are given a list of programming languages along with attributes of those programming languages

```ruby
languages = {
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

1. Iterate over the hash and insert the language as keys in a new hash along with an array of styles that language is a part of.  It should match the following format.

```ruby
{
  :ruby => {
    :style => [:oo],
    :type => "interpreted"
  },
  :python => {
    :style => [:oo],
    :type => "interpreted"
  }
  etc etc
}
```