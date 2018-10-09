# 09. Typoglycemia
# スペースで区切られた単語列に対して，各単語の先頭と末尾の文字は残し，それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ．
# ただし，長さが４以下の単語は並び替えないこととする．適当な英語の文（例えば"I couldn't believe that I could actually
# understand what I was reading : the phenomenal power of the human mind ."）を与え，その実行結果を確認せよ．

# Shuffles all the letters except the first/last one of
# words which has more than 4 letters in a sentence.
#
# @param [<String>] a sentence which has a series of words.
# @return [<String>] a new sentence with the words shuffled.
#
def shuffle_letters_in(sentence)
  sentence.split.map do |word|
    word[1..-2] = word[1..-2].split('').shuffle.join if word.length > 4
    word
  end.join(' ')
end

sentence = "I couldn't believe that I could actually understand what I was \
reading : the phenomenal power of the human mind ."
puts shuffle_letters_in(sentence)
