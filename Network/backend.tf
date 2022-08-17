terraform {
  backend "s3" {
    bucket         = "talent-academy-pushpa-terraform-tfstates"
    key            = "talent-academy/elk_stack/elk.tfstates"
    region         = "eu-west-1"
    #dynamodb_table = "terraform-lock"
  }
}