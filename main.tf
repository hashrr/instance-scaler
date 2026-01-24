resource "aws_ssm_document" "automation_runbook" {
  name            = "EC2-VerticalScaling"
  document_format = "YAML"
  document_type   = "Automation"
  content         = file("ssm_documents/EC2-VerticalScaling.yml")
}
