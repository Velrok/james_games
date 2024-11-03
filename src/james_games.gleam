import draw
import game.{type Game}
import gleam/int
import p5js_gleam.{type P5}
import p5js_gleam/bindings as p5
import player.{type Player}
import plinth/browser/window
import plinth/javascript/console

fn setup(p: P5) -> Game {
  let win = window.self()
  let width = window.inner_width(win) - 20
  let height = window.inner_height(win) - 20

  let player_img = p5.load_image(p, "./assets/ball.png")

  p5.create_canvas(p, int.to_float(width), int.to_float(height))

  game.Game(
    player: player.new(),
    player_img: player_img,
    name: "James Games",
    window_with: width,
    window_height: height,
  )
}

fn draw(p: P5, game: Game) {
  draw.game(p, game)
}

pub fn main() {
  p5js_gleam.create_sketch(init: setup, draw: draw)
  |> p5.start_sketch
}
