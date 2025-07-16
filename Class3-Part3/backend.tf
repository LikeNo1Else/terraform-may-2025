terraform {
  backend "s3" {
    bucket = "kaizen-alexander-unique"
    key    = "kaizen/terraform.tfstate"
    region = "ca-central-1"
    use_lockfile = true
  }
}
