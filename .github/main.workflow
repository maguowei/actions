workflow "hello" {
  on = "push"
  resolves = ["./hello/"]
}

action "./hello/" {
  uses = "./hello/"
  args = "Hello World"
}
