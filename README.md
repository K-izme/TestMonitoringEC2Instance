# TestMonitoringEC2Instance
## Topology:

![236](https://github.com/K-izme/TestMonitoringEC2Instance/assets/91515708/adc8a8d0-69b2-499b-a0a6-01fca1fb051b)


linux server

```javascript
wget https://github.com/prometheus/node_exporter/releases/download/v<VERSION>/node_exporter-<VERSION>.<OS>-<ARCH>.tar.gz
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
./node_exporter
```

prometheus

``` javascript
wget https://github.com/prometheus/prometheus/releases/download/v<VERSION>/node_exporter-<VERSION>.<OS>-<ARCH>.tar.gz
tar xvfz prometheus-*.tar.gz
cd prometheus-*
```

modify file prometheus.yml

```javascript
./prometheus --config.file=prometheus.yml
```

grafana

```javascript
sudo apt-get install -y apt-transport-https software-properties-common wget
sudo mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install grafana
```

```javascript
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server
```

goto ip:3000 => data source => prometheus 

![image](https://github.com/K-izme/TestMonitoringEC2Instance/assets/91515708/44a47b59-d1fa-4f86-ae2d-0003156d9442)

