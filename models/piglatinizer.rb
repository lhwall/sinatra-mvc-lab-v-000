class PigLatinizer
attr_accessor :new_text, :original_text

def initialize
end

def piglatinize(original_text)
  @original_text = original_text

  if @original_text[0].match(/[aeiouAEIOU]/)
    @new_text = @original_text << "way"
  else

  beginning = ""
  word_array = @original_text.split("")

  word_array.each do |letter|
    if !letter.match(/[aeiouAEIOU]/)
      beginning << letter
      word_array.delete(letter)
      binding.pry
    else
      @new_text = beginning << word_array.join("") << "ay"
      return @new_text
    end
  end
end
end


  # split_word = @original_text.split("")
  # beginning = ""
  # rest = split_word
  # split_word.each do |letter|
  #   if !letter.match(/[aeiouAEIOU]/)
  #     beginning << letter
  #     rest.delete_at(rest.index(letter))
  #   else
  #     @new_text = beginning << rest.join("") << "ay"
  #     return @new_text



end
