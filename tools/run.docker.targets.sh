#!/usr/bin/env bash

docker run --name webgoat -d --restart unless-stopped -p 6661:8080 -t santosomar/webgoat
docker run --name juice-shop --restart unless-stopped -d -p 6662:3000 santosomar/juice-shop
docker run --name dvwa --restart unless-stopped -itd -p 6663:80 santosomar/dvwa
docker run --name mutillidae_2 --restart unless-stopped -d -p 6664:80 santosomar/mutillidae_2
docker run --name bwapp2 --restart unless-stopped -d -p 6665:80 santosomar/bwapp
docker run --name dvna --restart unless-stopped -d -p 6666:9090 santosomar/dvna
docker run --name hackazon -d --restart unless-stopped -p 6667:80 santosomar/hackazon
docker run --name hackme-rtov -d --restart unless-stopped -p 6668:80 santosomar/hackme-rtov
docker run --name xvwa --restart unless-stopped -p 6669:80 tuxotron/xvwa
docker run --name phpldapadmin -d --restart unless-stopped -p 6670:80 vulnerables/phpldapadmin-remote-dump
docker run --name metasploit-vuln-emulator -d --restart unless-stopped -p
       -p 20:20 -p 21:21 -p 80:80 -p 443:443 -p 4848:4848 \
       -p 6000:6000 -p 6060:6060 -p 7000:7000 -p 7181:7181 \
       -p 7547:7547 -p 8000:8000 -p 8008:8008 -p 8020:8020 \
       -p 8080:8080 -p 8400:8400 \
       vulnerables/metasploit-vulnerability-emulator
docker run --name railsgoat -d --restart unless-stopped -p 3000:3000 vulnerables/web-owasp-railsgoat
docker run --name shellshock -d --restart unless-stopped -p 6671:80 vulnerables/cve-2014-6271