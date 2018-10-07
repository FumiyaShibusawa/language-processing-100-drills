# 08. 暗号文
# 与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．
#
# 英小文字ならば(219 - 文字コード)の文字に置換
# その他の文字はそのまま出力
# この関数を用い，英語のメッセージを暗号化・復号化せよ．

def cipher(message)
  message.gsub(/[[:alpha:]&&[:lower:]]+/) do |w|
    w.codepoints.map { |n| (219 - n).chr(Encoding::UTF_8) }.join
  end
end

sentence = 'Hi, My name is John. I\'m a software engineer for 10 years.'
ciphered = cipher(sentence)
desiphered = cipher(ciphered)
puts "ciphered: #{ciphered}"
puts "deciphered: #{desiphered}"
