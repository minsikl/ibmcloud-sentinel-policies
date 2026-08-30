policy "restrict-ssh" {
2
source = "./restrict-ssh.sentinel"
3
enforcement_level = "hard-mandatory"
4
description = "Prevents inbound SSH access from being exposed to the public Internet."
5
}
