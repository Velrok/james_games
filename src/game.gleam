import p5js_gleam.{type P5, type P5Image}
import player.{type Player}

pub type Game {
  Game(
    player_img: P5Image,
    player: Player,
    name: String,
    window_with: Int,
    window_height: Int,
  )
}
