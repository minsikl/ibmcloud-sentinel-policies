policy "restrict-ssh" {
  source            = "./restrict-ssh.sentinel"
  enforcement_level = "hard-mandatory"
  description       = "Prevents inbound SSH access from being exposed to the public Internet."
}
