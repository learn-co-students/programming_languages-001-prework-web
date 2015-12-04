require 'pry'

def pl
  { :oo => {
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
end



def rl(langs)
  new_hash = {}
  langs.each do |k,v|
    v.collect do |language, type|
      new_hash[language] = type
      
    end
  end
    new_hash.collect do |k,v|
      if k == :ruby || k == :java || k == :python
        v[:style] = [:oo]
      elsif k == :javascript
        v[:style] = [:oo, :functional]
      elsif k == :clojure || k == :erlang || k == :scala
      v[:style] = [:functional]          
          
      end
     end
     new_hash
    
end
