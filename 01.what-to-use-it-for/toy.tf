resource "scout_profile" "this" {
  active = true
  button {
    type = "heart"
    function {
      command = "5"
    }
  }
  button {
    type = "music"
    function {
      music_file = "/opt/scout/data/you-are-my-sun-shine.mp3"
    }
  }
}