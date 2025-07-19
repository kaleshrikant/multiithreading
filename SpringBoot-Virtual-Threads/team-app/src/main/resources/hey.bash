$ sudo apt-get install hey
$ hey -n 32 -c 32 http://localhost:8080/

Summary:
  Total:	8.0601 secs
  Slowest:	8.0593 secs
  Fastest:	2.0208 secs
  Average:	4.2857 secs
  Requests/sec:	3.9702


Response time histogram:
  2.021 [1]	|■■■■
  2.625 [9]	|■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  3.229 [0]	|
  3.832 [0]	|
  4.436 [10]	|■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  5.040 [0]	|
  5.644 [0]	|
  6.248 [10]	|■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  6.852 [0]	|
  7.455 [0]	|
  8.059 [2]	|■■■■■■■■


Latency distribution:
  10% in 2.0213 secs
  25% in 2.0215 secs
  50% in 4.0340 secs
  75% in 6.0470 secs
  90% in 6.0476 secs
  95% in 8.0593 secs
  0% in 0.0000 secs

Details (average, fastest, slowest):
  DNS+dialup:	0.0011 secs, 2.0208 secs, 8.0593 secs
  DNS-lookup:	0.0006 secs, 0.0001 secs, 0.0012 secs
  req write:	0.0001 secs, 0.0000 secs, 0.0002 secs
  resp wait:	4.2838 secs, 2.0180 secs, 8.0579 secs
  resp read:	0.0007 secs, 0.0000 secs, 0.0019 secs

Status code distribution:
  [200]	32 responses

## Post enabling Virtual Thread --> benchmark

$ hey -n 32 -c 32 http://localhost:8080/

  Summary:
    Total:	2.4099 secs
    Slowest:	2.4094 secs
    Fastest:	2.4041 secs
    Average:	2.4060 secs
    Requests/sec:	13.2788


  Response time histogram:
    2.404 [1]	|■■■■
    2.405 [9]	|■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
    2.405 [6]	|■■■■■■■■■■■■■■■■■■■■■■
    2.406 [1]	|■■■■
    2.406 [1]	|■■■■
    2.407 [0]	|
    2.407 [0]	|
    2.408 [11]	|■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
    2.408 [1]	|■■■■
    2.409 [1]	|■■■■
    2.409 [1]	|■■■■


  Latency distribution:
    10% in 2.4043 secs
    25% in 2.4045 secs
    50% in 2.4055 secs
    75% in 2.4076 secs
    90% in 2.4079 secs
    95% in 2.4094 secs
    0% in 0.0000 secs

  Details (average, fastest, slowest):
    DNS+dialup:	0.0009 secs, 2.4041 secs, 2.4094 secs
    DNS-lookup:	0.0005 secs, 0.0000 secs, 0.0011 secs
    req write:	0.0001 secs, 0.0000 secs, 0.0005 secs
    resp wait:	2.4031 secs, 2.4001 secs, 2.4071 secs
    resp read:	0.0017 secs, 0.0000 secs, 0.0034 secs

  Status code distribution:
    [200]	32 responses

