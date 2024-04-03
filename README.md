1. `docker compose up --build -d`

2. `docker exec -it client nslookup service1.my-test-net.io`

2. `docker exec -it client nslookup service2.my-test-net.io`



to check dnssec use this commands

`delv -a ./Authoritative/trust-anchors.txt +root=com. @172.24.0.5 service1.my-test-net.com`

`dig @172.24.0.5 my-test-net.com. DNSKEY +multiline +noall +answer`

to generate new keys use this (from keys/zone_dir):

`dnssec-keygen -a RSASHA256 -b 1024 my-test-net.com`

`dnssec-keygen -a RSASHA256 -b 2048 -f KSK my-test-net.com`

to generate signed zone use this:

`dnssec-signzone -A -t -N INCREMENT -o my-test-net.com. -f ../../zones/db.my-test-net.com.signed ../../zones/db.my-test-net.com <KSK>.key <ZSK>.key`
`dnssec-signzone -A -t -N INCREMENT -o com. -f ../../zones/db.com.signed ../../zones/db.com <KSK>.key <ZSK>.key`

to generate new DS record use this:

`dnssec-dsfromkey <KSK>.key`
