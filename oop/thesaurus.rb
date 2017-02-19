# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.

class Thesaurus

  def initialize
    @entries = []
  end

  def add_entry(entry)
    @entries << entry
  end

  def remove_entry(entry)
    @entries.delete_at(entry) 
  end

  def get_synonyms(name)
    @entries.each do |entry|
      if entry.word == name
        puts entry.synonyms
      end
    end
  end

  def get_antonyms(name)
    @entries.each do |entry|
      if entry.word == name
        puts entry.antonyms
      end
    end
  end

end

class Entry
  attr_accessor :word, :synonyms, :antonyms

  def initialize(word, synonyms, antonyms)
    @word = word
    @synonyms = synonyms
    @antonyms = antonyms
  end

  def add_synonym(synonym)
    @synonyms << synonym
  end

  def add_antonym(antonym)
    @antonyms << antonym
  end

end

thesaurus = Thesaurus.new

good = Entry.new("good", ["rad", "acceptable"], ["evil", "inferior"])

thesaurus.add_entry(good)

argue =  Entry.new( "argue", ["sass", "dispute", "squabble"], ["agree"] )

thesaurus.add_entry(argue)

thesaurus.get_synonyms("good")

good.add_synonym("excellent")

thesaurus.get_synonyms("good")

problem = Entry.new("problem", ["dilemma"], ["agreement", "assistance"])

thesaurus.add_entry(problem)

thesaurus.get_antonyms("problem")

problem.add_antonym("solution")

thesaurus.get_antonyms("problem")

