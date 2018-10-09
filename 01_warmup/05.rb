# 05. n-gram
# 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．この関数を用い，
# 'I am an NLPer'という文から単語bi-gram，文字bi-gramを得よ．

#
# Returns n-gram word by word
#
# @param [<String>] sentence <to be n-grammed>
# @param [<Integer>] n_gram <n as in n-gram to be assigned>
#
# @return [<Array>] <pair of n-gram word by word>
#
def create_word_n_gram(sentence, n_gram)
  words = sentence.split
  words.each_cons(n_gram).with_object([]) do |word, array|
    array << word
  end
end

#
# Returns n-gram letter by letter
#
# @param [<String>] sentence <to be n-grammed>
# @param [<Integer>] n_gram <n as in n-gram to be assigned>
#
# @return [<Array>] <pair of n-gram letter by letter>
#
def create_letter_n_gram(sentence, n_gram)
  letters = sentence.delete(' ')
  letters.split('').each_cons(n_gram).with_object([]) do |letter, array|
    array << letter
  end
end

# 単語bi-gram
word_bi_gram = create_word_n_gram('I am an NLPer', 2)

# 文字bi-gram
letter_bi_gram = create_letter_n_gram('I am an NLPer', 2)

puts "word_bi_gram: #{word_bi_gram}"
puts "letter_bi_gram: #{letter_bi_gram}"
