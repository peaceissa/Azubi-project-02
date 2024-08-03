resource "aws_dynamodb_table_item" "tf_guestbook_table" {
  table_name = aws_dynamodb_table.tf_guestbook_table.name
  hash_key   = aws_dynamodb_table.tf_guestbook_table.hash_key
  item = jsonencode({
    "Name" = {"S" = "Mary Jane"},
    "Email" = {"S" = "jane@mail.com"},
    "phone" = {"N" = "1234567890"},
    "country" = {"S" = "USA"}
    
  })
}

resource "aws_dynamodb_table_item" "tf_guestbook_table2" {
  table_name = aws_dynamodb_table.tf_guestbook_table.name
  hash_key   = aws_dynamodb_table.tf_guestbook_table.hash_key

  item = jsonencode({
  "Name" = {"S" = "Anne Cooper"},
  "Email" = {"S" = "coper45@mail.com"},
  "phone" = {"N" = "456712390"},
  "country" = {"S" = "CANADA"}
  
})
}

resource "aws_dynamodb_table_item" "tf_guestbook_table3" {
  table_name = aws_dynamodb_table.tf_guestbook_table.name
  hash_key   = aws_dynamodb_table.tf_guestbook_table.hash_key

  item = jsonencode({ 
  "Name" = {"S" = "Craig Anderson"},
  "Email" = {"S" = "craig@mail.com"},
  "phone" = {"N" = "9124876543"},
  "country" = {"S" = "Uk"}
  
})
}