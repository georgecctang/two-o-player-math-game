# class Player
  
#   attr_reader :name, :lives_remaining

#   def initialize name
#     @name = name
#     @lives_remaining = 3
#   end
  
#   def lose_life
#     @lives_remaining -= 1
#   end

# end

# p = Player.new('Jon')
# q = p
# q.lose_life
# puts p.lives_remaining
numbers = [100, 200]
puts numbers[0]

puts "What's your name? "
name = gets.chomp
puts
puts name + "!!"
