require './Game'
require './Player'

p1 = Player.new("Jon")
p2 = Player.new("Mary")

game = Game.new(p1, p2)
game.start
