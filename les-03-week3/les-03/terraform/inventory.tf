resource "local_file" "ansible_inventory" {
  filename = "${path.module}/../inventory.ini"
  content  = <<EOT
[web]
192.168.100.31
192.168.100.33

[db]
192.168.100.32

[all:vars]
ansible_user=iac
ansible_ssh_private_key_file=~/.ssh/skylab
EOT
}