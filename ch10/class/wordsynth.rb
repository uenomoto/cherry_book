require_relative '../module/effects'

class WordSynth
  include Effects
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    words = original_words
    @effects.each do |effect|
      words = effect.call(words) 
    end
    return words
  end
end






synth = WordSynth.new
puts synth.play('Ruby is fun!')

synth.add_effect(Effects.loud(3))
puts synth.play('Ruby is fun!')
