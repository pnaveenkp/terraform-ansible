resource "local_file" "inventory-file" {
  content = templatefile("details.tpl",
    {
      testserver01 = aws_instance.web-1.public_ip
      testserver02 = aws_instance.web-2.public_ip
      testserver03 = aws_instance.web-3.public_ip
    }
  )
  filename = "invfile"
}
