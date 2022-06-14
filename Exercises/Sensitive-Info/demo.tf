locals { 
  db_password = {
    admin = "my=passcode"
  }
} 

output "db-password" {
    value = local.db_password
    sensitive = true
}