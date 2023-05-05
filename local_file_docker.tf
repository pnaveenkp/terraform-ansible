resource "local_file" "docker-inventory-file" {
  content = templatefile("docker_details.tpl",
    {

      testserver01 = aws_instance.web-1.private_ip
      testserver02 = aws_instance.web-2.private_ip
      testserver03 = aws_instance.web-3.private_ip
      testserver04 = aws_instance.web-4.private_ip
      testserver05 = aws_instance.web-5.private_ip
      testserver06 = aws_instance.web-6.private_ip
    }
  )
  filename = "dockerinvfile"
}