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

