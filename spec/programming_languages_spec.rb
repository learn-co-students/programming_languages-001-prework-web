require 'spec_helper'

describe 'programming languages' do

  let(:languages_by_style) {
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
  }

  let(:reformatted_languages) {
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
  }
  describe '#reformat_languages' do

    it 'Reformat the programming languages hash' do
      expect(reformat_languages(languages_by_style)).to eq(reformatted_languages)
    end

  end

end