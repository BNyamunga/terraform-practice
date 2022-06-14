terraform {
  backend "s3" {
    bucket     = "my-s3-backend-bucket"
    key        = "s3remotestate.tf.state"
    dynamodb_dynamodb_table = "nameofdynamodbtable"  /*when creating table, add partition key which should be given name lockID. lock ID added to dynamodb table when many users are trying to access resources /refresh the state file. no consistency issues as only one person can access the file at a time, so it locks it.*/
  }
}
