# 01. 「パタトクカシーー」
# 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．

output = ""
"パタトクカシーー".split("").each_with_index do |letter, i|
  output << letter if i % 2 == 0
end

puts output
