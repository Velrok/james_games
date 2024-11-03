import draw
import p5js_gleam.{type P5}
import p5js_gleam/bindings as p5

type Game {
  Game(name: String)
}

fn setup(p: P5) -> Game {
  p5.create_canvas(p, 800.0, 600.0)
  Game(name: "James Games")
}

fn draw(p: P5, game: Game) {
  p5.background(p, "white")
  p5.fill(p, "#000000")
  p5.text_align(p, p5.center, p5.center)
  draw.circle(p)
  p5.text(p, game.name, 400.0, 300.0)
}

pub fn main() {
  p5js_gleam.create_sketch(init: setup, draw: draw)
  |> p5.start_sketch
}
