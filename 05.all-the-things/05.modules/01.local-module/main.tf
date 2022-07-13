module "viktor_greeting" {
  source = "./module/foo"

  name = "Viktor"
}

module "satan_greeting" {
  source = "./module/foo"

  name = "Satan"
}

module "satan_call_script" {
  source = "./module/call-scripts"

  greeting_phrase = module.satan_greeting.greeting
}
