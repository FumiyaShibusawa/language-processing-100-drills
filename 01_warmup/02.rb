# 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
# 「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．

patrol_car = "パトカー"
taxi = "タクシー"

output = patrol_car.split("")
taxi.length.times do |i|
  output.insert(i * 2 + 1, taxi[i])
end
puts output.join("")
