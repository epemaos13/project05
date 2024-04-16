resource "aws_instance" "jenkins" {
  ami           = "ami-0d3d9b94632ba1e57"
  instance_type = "t3.large"
  key_name      = "project05-key"
  private_ip    = "10.5.1.100"
  security_groups = [data.terraform_remote_state.security_group.outputs.ssh_id,
    data.terraform_remote_state.security_group.outputs.http_id,
  data.terraform_remote_state.security_group.outputs.http_target_id]
  subnet_id = data.terraform_remote_state.vpc.outputs.private1-subnet-2a-id

  tags = {
    Name = "project05-jenkins"
  }
}