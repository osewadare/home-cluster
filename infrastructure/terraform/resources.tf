#aws resources 
resource "aws_s3_bucket" "daresfirsttfbucket" {
  bucket = "daresfirsttfbucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.daresfirsttfbucket.id
  acl    = "private"
}


#kubernetes resources
/*resource "kubernetes_namespace" "cache" {
  metadata {
    name = "cache"
  }
}*/

/*resource "kubernetes_namespace" "home-assistant" {
  metadata {
    name = "home-assistant"
  }
}*/

#helm resources 
/*resource "helm_release" "redis-helm" {
  name       = "redis-helm"
  namespace  = kubernetes_namespace.cache.metadata.0.name
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"

}*/

/*resource "helm_release" "home-assistant-helm" {
  name       = "home-assistant-helm"
  namespace  = kubernetes_namespace.home-assistant.metadata.0.name
  repository = "https://helm.samipsolutions.fi/"
  chart      = "home-assistant"
}*/
