# 05. n-gram
# 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．この関数を用い，
# 'I am an NLPer'という文から単語bi-gram，文字bi-gramを得よ．

# 単語bi-gram
word_bi_gram = []
'I am an NLPer'.split.each_cons(2) { |s| word_bi_gram << s }

# 文字bi-gram
letter_bi_gram = []
# こっちの書き方だと冗長かも → 'I am an NLPer'.split('').map { |a| a.delete(' ') }.reject(&:empty?)
'I am an NLPer'.delete(' ').split('').each_cons(2) { |l| letter_bi_gram << l }

puts "word_bi_gram: #{word_bi_gram}"
puts "letter_bi_gram: #{letter_bi_gram}"
