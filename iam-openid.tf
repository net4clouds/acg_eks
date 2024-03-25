resource "aws_iam_openid_connect_provider" "eks_openid" {
  url = aws_eks_cluster.cl01.identity.0.oidc.0.issuer
  client_id_list = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.eks_cluster_oidc.certificates.0.sha1_fingerprint]
}

#aws_eks_cluster.cluster.identity.0.oidc.0.issuer

#output "oidc" {
#  value = aws_eks_cluster.cl01.identity.0.oidc.0.issuer
#}

#thumbprint_list = [data.tls_certificate.example.certificates.0.certificates.0.sha1_fingerprint]

#output "thumbprint" {
#  value = data.tls_certificate.eks_cluster_oidc.certificates.0.sha1_fingerprint
#}