[allservers]
testserver01 ansible_port=22 ansible_host=${testserver01}
testserver02 ansible_port=22 ansible_host=${testserver02}
testserver03 ansible_port=22 ansible_host=${testserver03}

[webserver]
testserver01 ansible_port=22 ansible_host=${testserver01}

[appserver]
testserver02 ansible_port=22 ansible_host=${testserver02}

[dbserver]
testserver03 ansible_port=22 ansible_host=${testserver03}

[private]
    pvttestserver01 = aws_instance.web-1.private_ip
    pvttestserver02 = aws_instance.web-2.private_ip
    pvttestserver03 = aws_instance.web-3.private_ip
