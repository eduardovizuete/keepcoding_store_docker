# keepcoding_store_docker

Docker developer environment to store application.
Containers: mongodb, nodejs - express, angularjs

## Project structure

```bash
.
├── angularStoreFinal
│   ├── package.json
│   ├── README.md
│   ├── src
├── nodeApiFinal
│   ├── nodeapi
│   │   ├── index.md
│   │   ├── package.json
│   └── README.md
└── scripts
│   ├── dev_backend_entrypoint.sh
│   ├── development_backend.sh
│   ├── development_frontend.sh
│   └── dev_frontend_entrypoint.sh
├── dockerbuildbackend.sh
├── dockerbuildfrontend.sh
├── docker-compose.yml
├── Dockerfile_backend
├── Dockerfile_frontend
├── dockerrunbackend.sh
├── dockerrunfrontend.sh
├── dockerrunmongodb.sh
```


## Setup

- Clone this repository

### Frontend code

- Create directory angularStoreFinal into the root project
- Download / clone frontend code from github repository into angularStoreFinal directory 
https://github.com/eduardovizuete/angularStoreFinal.git  

### Backend code

- Create directory nodeApiFinal into the root project
- Download / clone backend code from github repository into nodeApiFinal directory
https://github.com/eduardovizuete/nodeApiFinal.git 

### Build and run containers

- Run the above command from root directory of project structure
```
$ docker-compose up --build 
```

## Test

http://localhost:3000
http://localhost:4200

