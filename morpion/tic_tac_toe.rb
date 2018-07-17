require_relative "tic_tac_toe/version"

module TicTacToe
end

require_relative "./tic_tac_toe/core_extensions.rb"
lib_path = File.expand_path(File.dirname(__FILE__))
Dir[lib_path + "/tic_tac_toe/**/*.rb"].each { |file| require file }

puts "Welcome to tic tac toe"
bob = TicTacToe::Player.new({color: "X", name: "bob"})
frank = TicTacToe::Player.new({color: "O", name: "frank"})
players = [bob, frank]
TicTacToe::Game.new(players).play