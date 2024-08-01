# MTIG
Docker-compose for Mosquitto, telegraf, Influxdb and Grafana stack.

This is a simple setup to you to host, capture log and display data from IOT devices.

# Usage

1. Run:
```
./generate_token.sh
```
1. Start docker compose

```
docker compose up -d
```

* You should have now have grafana configured at your host on port 3000 [localhost:3000](http://localhost:3000)
* You should now have influxdb configured on port 8086:  [localhost:8086](http://localhost:8086)
Both are configured to talk to each other




## Original post
[Usage instruction at blog post out of date, but infromative](https://guysoft.wordpress.com/mtigos/)

