resource "aws_acm_certificate" "n4c" {
  private_key      = file("../ssl_certificate/cakey.pem")
  certificate_body = file("../ssl_certificate/cacert.pem")
}