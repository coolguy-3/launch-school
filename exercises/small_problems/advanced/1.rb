NOUNS = %w( Steve Mark Todd )
VERBS = %w( run eat punch )
ADJECTIVES = %w( strong stupid cool )
ADVERBS = %w( quickly quietly carelessly )

def madlibs(file)
  new_file = file.split(" ").map do |sentence|
    sentence.split(/([.!?])/).map do |word|
      case word
      when 'noun' then NOUNS.sample
      when 'adjective' then ADJECTIVES.sample
      when 'verb' then VERBS.sample
      when 'adverb' then ADVERBS.sample
      else
        word
      end
    end
  end
  puts new_file.join(" ")
end

sentence = "Wow what a adjective noun! I have never seen anyone verb so adverb! Very adjective indeed."

madlibs(sentence)

