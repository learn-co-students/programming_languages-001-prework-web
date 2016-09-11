def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, info|
    info.each do |name, data|
      data.each do |type, info|
        #new_hash[name] = {:type => info, :style => [style]}
        if new_hash[name]
          new_hash[name][:style] << style
        else
          new_hash[name] = {:type => info, :style => [style]}
        end   
      end
    end
  end
  new_hash      
end

=begin
  
:oo(TYPE) => {
    :ruby(NAME) => {
      :type(:TYPE) => "interpreted"(INFO)
    },
   
  
  },
  :functional => {
    :clojure => {
      :type => "compiled"
  
to

:ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },

=end
