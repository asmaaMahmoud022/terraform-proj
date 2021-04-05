terraform {
  backend "s3" {
    bucket = "my-terraf-bucket"
    key    = "day2/stateFile"
    region = "us-east-1"
    # dynamodb_table = "NewDB"
  }
}
