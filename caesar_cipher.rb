def caesar_cipher(string, shift)

  shift %= 26        # reduce large shifts into the minimum module
  result = "" 

  # iterate through the string
  string.each_char do |c|
    # for the uppercase letters
    if c.ord > 64 && c.ord < 91
      new_char = ((c.ord - 65 + shift) % 26 + 65).chr
    # for the lowercase letters
    elsif c.ord > 96 && c.ord < 123 
      new_char = ((c.ord - 97 + shift) % 26 + 97).chr
    # for other characters
    else
      new_char = c
    end
    result += new_char
  end

  # return the result string
  result            

end

print "enter some text: "
my_string = gets.chomp
print "what shift: "
shift = gets.chomp.to_i

puts caesar_cipher(my_string, shift)
