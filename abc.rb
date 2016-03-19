abc={
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
xyz={}
abc.each do |i, g|
  g.each do |x,y|

    y.each do |z,k|
      if xyz.has_key?(x)
        xyz[x][:style][xyz[x][:style].size]=i
      else
        xyz[x]={z => k, :style => [i]}
      #puts k
      end
    end
  end
end
puts xyz













#abc.each do |i,g|



