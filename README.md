---
  tags: arrays, iteration, hashes, conditionals, nested_structures, bonus
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
