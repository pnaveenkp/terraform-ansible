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
pvttestserver01 ansible_port=22 ansible_host=${pvttestserver01}
pvttestserver02 ansible_port=22 ansible_host=${pvttestserver02}
pvttestserver03 ansible_port=22 ansible_host=${pvttestserver03}