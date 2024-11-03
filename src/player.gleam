import glector.{Vector2}

pub type Player {
  Player(pos: glector.Vector2)
}

pub fn new() {
  Player(pos: Vector2(0.0, 0.0))
}
