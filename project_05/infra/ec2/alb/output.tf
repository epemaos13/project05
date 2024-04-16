output "jenkins_id" {
  description = "The ID of the Instance"
  value       = aws_instance.jenkins.id
}