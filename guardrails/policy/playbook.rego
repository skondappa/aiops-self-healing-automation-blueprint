package playbook

deny[msg] {
  some i
  task := input[i].tasks[_]
  task.shell
  msg := "Shell tasks not allowed"
}

deny[msg] {
  some i
  task := input[i].tasks[_]
  task.command
  msg := "Command tasks not allowed"
}