$TTL    1d ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     ns1.my-test-net.com. root.my-test-net.com. (
                  3      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
my-test-net.com.        IN      NS      ns1.my-test-net.com.

; name servers - A records
ns1             IN      A      172.24.0.2

; others A records
service1        IN      A      172.24.0.3
service2        IN      A      172.24.0.4


my-test-net.com. IN DNSKEY 256 3 8 AwEAAc31RGj3EIGL1df7lu4fCyiEZVrnRGzShaoT0zCL2zi55O+tzPmP jD+m1maKGIrR/1w/+LHge4zNqa92gGLebayZ1lJQBv2r6W5AIy67/hFZ i9EyXpEf3c89ZjK4/NyfBGl1TeX4muqY0UrZM1d3nPcRp8D9+IDtKkOl je+4Xiax
my-test-net.com. IN DNSKEY 257 3 8 AwEAAdu0nFB+UmZg79BgHuDNGntvRk23FHC5J0UdVnnuNqyyjcsrW6dE Xs4Hx8rNsAav4BBDee6jNeaUXsUrDGjys2QeYoEtv0bjy7t3XHJtqERw kQvRbIUkP3d9GT90bFc+TRU3P/4oX+KYKSOYwkRisfjkalQIfvz3R32j /LCQExOTDpQmrA+fdQDN+VqJLVZNlVAZZImKgTDjsJmC9b2aeHNPWAM8 nhRTWHKxdmIUHE7gSdsdAgVJUIDN0gH7AVpdzeMVFPJJWtGCi16Bb27F sLX9Hs3qcxAm2fmu+ym9i1ZKuWTLzu5u8+mjqUyOEsvQ+lrZRhZBbBvd bFjlYH0Fjdc=

