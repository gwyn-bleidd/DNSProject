$TTL    5s ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     ns1.com. root.com. (
                  10      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
com. IN NS ns1.com.

; name servers - A records
ns1             IN      A      172.24.0.2

my-test-net.com.    IN   A   172.24.0.2            ; IP address of my-test-net.com

my-test-net.com. IN NS ns1.my-test-net.com. ;

my-test-net.com. IN DS 12941 8 2 AD33091DB411DF91E6DB18F7019B501F2239EDDF6533C41A4EA90D68FD50622F


com. IN DNSKEY 256 3 8 AwEAAZj9Fevor8z5AhOUWY4lZoTnEPs68V77FF6ZMT0WGU0EspFb/0fg L36XHOrZ4lNAHJBBLGSs7U3ZzPMWYAFr8TXzfODdl1XiPCFtOWR7iGOW alVh515w/CDU9yujcwFbUl64rIo8aSaWjPimknDphyQ376CaTCVZzNHL YAKi31ld
com. IN DNSKEY 257 3 8 AwEAAZ89SlbREGD6eSVsxpYUsUo2iVFC/rXcugq+WS9XbBw3HKg9OB8H L3G+G0BVEXN2u61iaSoYc6VijEsBTRSb3OfwMcM0ZdLdP+njkn3VLvPr /F4SZ3Rk8I3gpXl8dJWR27eB52/BvL976LzLIM7RN+FrWd88QNjjAp3L ubfUSY2y3tHzmiVCYJHOGphas6o/32JWjb+2sguD8J+lAQZnI9Ty7evE /XMS9gfXr1ZiQ3OEb9AEfomz5s3GqW+iCk+J+74Fp/P1IWI0ajaHv7bh eiIAMrKwulla4tppAkbg4qnxIEi4O14r9etdxXo4y4ox69IFXKWMeFkf XKflg2MkLDM=
