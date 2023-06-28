class MovePlayer
  def initialize(player_gateway:)
    @player_gateway = player_gateway
  end

  def execute(player_id:, x:, y:)
    player = @player_gateway.player(player_id)
    player.x = x
    player.y = y

    player.save

    { successful: true }
  end
end
