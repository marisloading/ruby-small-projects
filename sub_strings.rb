# create the dictionary array
# and the method to detect if the string provided exists in the array
# also use partial matches (perhaps search REGEX)
# 
# #count #scan
# s="this is a string with is thrice"
# s.scan(/is/).count  # => 3
# 
# don't fully understand why the instructions imply turning strings into arrays and then back to strings?
# don't know how that would be useful...
#  OH I GET IT! It's because if you have multiple words as a substring to search for, you might want to separate them into an array using #split and a space as a delimiter, this would create an array of every word in the sentence provided!
# 
# GOOD: allow user to call the function by requesting a sub string check
# BETTER: allow user to create their own dictionary

require 'pry-byebug'

$default_array = ["the", "be", "to", "of", "and", "in", "that", "have", "for", "not", "on", "with", "he", "as", "you", "do", "at", "it", "this", "but", "his", "by", "from", "they", "we", "say", "her", "she", "or", "will", "my", "one", "all", "would", "there", "their", "what", "so", "up", "out", "if", "about", "who", "get", "which", "go", "me", "when", "make", "can", "like", "time", "no", "just", "him", "know", "take", "people", "into", "year", "your", "good", "some", "could", "them", "see", "other", "than", "then", "now", "look", "only", "come", "its", "over", "think", "also", "back", "after", "use", "two", "how", "our", "work", "first", "well", "way", "even", "new", "want", "because", "any", "these", "give", "day", "most", "us"]

def substrings(string, array=$default_array)
  substring_array = string.gsub(/[^\w\s]/, '').split(" ")
  final_count = []

  if (array & substring_array).empty?
    final_count.push("No substring in dictionary")
  else
    array = array.join(" ")

    substring_array.each do |word|
      counter = array.scan(/(?=#{word})/).count
      final_count.push("#{word} => #{counter}") if counter > 0
    end
  end

  final_count.join(", ")
end

prompt = "> "

puts "What would you like to do?\n\n"

puts "[1]. Search my substring in dictionary\n[2]. Quit"
print prompt

while user_input = gets.chomp
  case user_input
  when "1"
    puts "Please input the string, it can be a word or a phrase.\nNote: The default dictionary is the 100 most used words in the English vocabulary, this is where we will search for the string provided."
    print prompt
    string_to_search = gets.chomp
    p substrings(string_to_search)
    break
  when "2"
    break
  else
    puts "Please select either 1 or 2."
    print prompt
  end
end
