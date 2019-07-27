workflow "hello" {
  on = "push"
  resolves = ["hello world"]
}

action "hello world" {
  uses = "./hello/"
  args = "Hello World"
}
