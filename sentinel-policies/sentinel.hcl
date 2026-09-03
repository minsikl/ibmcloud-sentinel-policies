policy "restrict-ssh" {
  source            = "./restrict-ssh.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "require-byok-boot-encryption" {
  source            = "./require-byok-boot-encryption.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "require-no-sg-acl-rules" {
  source            = "./require-no-sg-acl-rules.sentinel"
  enforcement_level = "hard-mandatory"
}
