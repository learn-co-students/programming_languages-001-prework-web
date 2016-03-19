def reformat_languages(languages)
  xyz={}
  languages.each do |i, g|
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
  return xyz
end
