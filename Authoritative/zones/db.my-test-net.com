$TTL    5s ; default expiration time (in seconds) of all RRs without their own TTL value
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


my-test-net.com. IN DNSKEY 256 3 8 AwEAAeQ1f8PdzGvxaGv81sMnz7sdD+I6GUq66dqZBJcmI8I9OqP8by1A gJVeeoPfA6JsQ1dhsSLzDcjBjirjb344ieACtrz3O0IDF9UYRH4SP/fJ h+iF2hgqJi47WdR/fX3qv+WEchAhvfIjmd8+lbtF3mhOCYWhGban/H4S t/dt8TQT
my-test-net.com. IN DNSKEY 257 3 8 AwEAAbfVf1CxSVdUXC83o1VVI4WJH6EwrAlO1DhtZrJmYtpm1fSiYW7P 5/hKibJYkg6PxqxSJgD9AKLC9JYD0ZmTro5E/Q9ldG35xQpZqEZDogSU 3NT3kSV8KJD7bHjGvUeZm5K/6uwZTnbtGX7i0UDWa3lWPslJlgI4rmVZ U5IrTjNR1MNRk6MsgBb+04VPOBD0j4daFSC9Z74qaVQk2fWzMNa74FS5 3sWxggrbXt70SAz8NyYewfybc2jAm6sDD+HeICtsnxRuxuFhyH5/cJgm SW4alWjxReZJnSJMOWdAcvJFBT8wUJ7DMiZohXKLVktoXJ77BVURO7BN Nfz+lmCIXuc=
