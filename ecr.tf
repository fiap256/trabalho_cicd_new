resource "aws_ecr_repository" "application_repository" {
  name                 = "cicd-application-repository"
  image_tag_mutability = "MUTABLE"
}

output "ecr_repository_url" {
  value = aws_ecr_repository.application_repository.repository_url
}