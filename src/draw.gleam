import game.{type Game}
import p5js_gleam.{type P5}
import p5js_gleam/bindings.{background, image} as p5
import player.{type Player}
import plinth/javascript/console

pub fn game(p: P5, game: Game) {
  background(p, "white")
  p5.text_width
  draw_player(p, game)
}

fn draw_player(p: P5, game: Game) -> P5 {
  image(
    p,
    image: game.player_img,
    width: 100.0,
    height: 100.0,
    top_left_x: 1.0,
    top_left_y: 1.0,
  )
  p
}
