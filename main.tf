resource "aws_security_group" "this" {
  name                   = "${local.stack}-${var.associated_resource}"
  description            = "controls network ingress and egress for the ${var.env} tier ${var.associated_resource} resource"
  revoke_rules_on_delete = var.revoke_rules_on_delete
  vpc_id                 = var.vpc_id

  tags = {
    "Name" = "${local.stack}-${var.associated_resource}"
  }
}