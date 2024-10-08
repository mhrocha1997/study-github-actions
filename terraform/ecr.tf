resource "aws_ecr_repository" "this" {
  name = var.ecr.name

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    IAC = "true"
  }
}
