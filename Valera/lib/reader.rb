class Reader
  def read_action(game)
    game.action_item = $stdin.gets.chomp.to_i
    return true unless (game.action_item < 1) || (game.action_item > 10)

    false
  end
end
