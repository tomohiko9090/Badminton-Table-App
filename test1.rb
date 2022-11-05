# <条件>
# 休憩が連続で何回もならないこと
# 同じぺアにならないようにすること→○
# 試合数が2回差以上にならないようにすること
# 同時に同じ人が同じタイミングで入らない

court = 2

members = ["bot1",
            "bot2",
            "bot3", 
            "bot4", 
            "bot5", 
            "bot6", 
            "bot7", 
            "bot8", 
            "bot9",
            "bot10"
          ]

pairs = members.combination(2).to_a #配列に変換

# pairsから1つ取り出す。変数:first_pair（破壊的メソッド）-①

# roopで、最初に取り出したペアのいづれかが、roopでとってきた要素の中（temp_pair）にないか確認

# （if1）もし、同じ要素が入っていた場合は、continue

# （if2）もし、全ての要素がバラバラの場合、
# その要素をsecond_pairに入れる
# pairsからそのindexを削除（破壊的メソッド）

# できた組み合わせ（first_pairを入れる）をtableという変数に入れる[["bot1", "bot2", "bot3", "bot4"],[・・・], [・・・]]

# ①に戻り、リストから取り出して、first_pairを加える。
done_pair = []
tables = []

pairs.each do |temp_pair|
  first_pair = pairs.slice!(0)
  pairs.each do |temp_pair| #二つ目にindexが入ってくる
    # 最初に使ったペアは使えないようにする
    if done_pair.include?(first_pair)
      next
    end

    # 同じ要素が入っていたら使えないようにする
    if first_pair.any? {|i| temp_pair.include?(i)} 
      next
    end

    # 上の2つのパターン以外で組み合わせを作る
    if true
      second_pair = temp_pair
      pairs.delete(second_pair)
      done_pair.push(first_pair)
      tables.push(first_pair + second_pair)
      break
    end
  end
end
# 明らかにやってない組み合わせがある。もう一回、上のアルゴリズムを直す（ホワイトボードを使う必要がありそう）
# ⓪10人の場合、ホワイトボードでどうなって欲しいか書き出す
# ①組み合わせ一つ目を取り出す（1コート）
# ②入っちゃいけないリストに1コートのメンバーを入れる
# ③入っちゃいけないリスト以外で二つ目を取り出す
# ④入っちゃいけないリストにnコートのメンバーを入れる
# ⑤コート数nの分だけ繰り返す
# ⑥1試合分が終わったら、試合を告知する
# ⑦組み合わせがなくなるまで、これを繰り返す
# （⑧1試合中に同じ人が入らないようにゲームを組むと組み合わせが足りないとなった場合、空白を入れる）

# 今後の流れ
game_no = 0
loop do
  game_no += 1
  puts "#{game_no}試合目 1コート : #{tables.shift}"
  puts "#{game_no}試合目 2コート : #{tables.shift}"
  puts ""

  if tables.length == 0
    break
  end
end














# # 1コートしかなかった場合
# n = gets.chomp.to_i
# p cmb = [*1..n].combination(4).to_a
# puts 

# cmb.each do |team|

#   p team

#   team[1], team[2] = team[2], team[1]
#   p team

#   team[1], team[3] = team[1], team[3]
#   p team

# end


# 2コートあった場合5

# n = gets.chomp.to_i
# cmb = [*1..9].combination(4).to_a

# box = []

# loop do

#   pick = cmb.shift

#   if cmb.length == 0
#     break
#   end

#   cmb.each do |watch|
#     watch.each do |i|
#       unless pick.include?(i)
#         box.push([pick, watch])
#         cmb.delete(watch)
#       end
#       break
#     end
#     break
#   end

#   if cmb.length == 0
#     break
#   end

# end

# p box


# cmb

# cmb.each do |team|


#   p team

#   team[1], team[2] = team[2], team[1]
#   p team

#   team[1], team[3] = team[1], team[3]
#   p team

# end

