require 'pry-byebug'

def encrypt(string, shift=1)
  letters = { alphabet: ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], 
  cap_alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]}
  encrypted_string = []

  array_of_string = string.split("")

  for letter in array_of_string do
    if letter.match?(/[[:alpha:]]/)
      alphabet_to_search = letter == letter.upcase ? :cap_alphabet : :alphabet

      letter_index = letters[alphabet_to_search].index(letter) + 1

      if shift >= 0
        index_diff = 26 - letter_index

        letter_index = shift - index_diff

        while letter_index > 26 do
          letter_index -= 26
        end

        letter_index -= 1
    
      else
        index_diff = 1 - letter_index
        letter_index = shift - index_diff


        while letter_index < -26 do
          letter_index -= -26
        end
      end

      encrypted_string.push(letters[alphabet_to_search][letter_index])
      
    else
      encrypted_string.push(letter)
    end
  end

  encrypted_string.join("")
end

p "Original word: Test; Shift number: 5"
p "Encrypted word: #{encrypt("Test", 5)}"

p "Original word: The brown Fox jumps over the lazy Dog; Shift number: 60"
p "Encrypted word: #{encrypt("The brown Fox jumps over the lazy Dog", 60)}"

p "Original word: The brown Fox jumps over the lazy Dog; Shift number: -28"
p "Encrypted word: #{encrypt("The brown Fox jumps over the lazy Dog", -28)}"

p "Original word: Hello, world!; Shift number: none"
p "Encrypted word: #{encrypt("Hello, world!")}"



  #
  # shift = 5
  # letter = "T"
  # index of letter = 19
  # in real alphabet = 20
  # real alphabet = 26 letters
  # 26 - 20 = 6 letters between "T" and "Z"
  # 5 - 6 = -1
  # the negative -1th letter in the alphabet is "Z"
  # but because the shift is positive, we are counting from 0.
  # -1 - -1 = -2
  # the negative -2th letter in the alphabet is "Y"
  # 
  # shift = -60
  # 1 - 20 = -19 letters between "T" and "A"
  # -60 - -19 = -41
  # -41 > -26
  # -41 - -26 = -15
  # -15 > -26
  # the negative -15th letter in the alphabet is "L"
