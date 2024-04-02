$TTL    1d ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     ns1.my-test-net.com. root.my-test-net.com. (
                  3      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
my-test-net.com.         IN      NS      ns1.my-test-net.com.

; name servers - A records
ns1             IN      A      172.24.0.2

; others A records
service1        IN      A      172.24.0.3
service2        IN      A      172.24.0.4
