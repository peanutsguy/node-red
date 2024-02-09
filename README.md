# Node-RED with NPM 18 LTS
![build status](https://github.com/peanutsguy/node-red/actions/workflows/docker-image.yml/badge.svg)

This container image contains Node-RED using NPM 18 LTS, since the official image uses NPM 17.

## Usage
```docker
docker run -d -v /etc/localtime:/etc/localtime:ro -v {data_folder}:/app -p 1880:1880 --name nodered peanutsguy/node-red
```

| Parameter | Description |
| - | - |
| -v {data_folder}:/app | Folder containing the Node-RED configuration |

[GitHub repository](https://github.com/peanutsguy/node-red)