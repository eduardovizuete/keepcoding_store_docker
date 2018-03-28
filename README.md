# keepcoding_store_docker

Docker developer environment to store application.
Containers: mongodb, nodejs - express, angularjs

## Project structure

```bash
.
├── angularStoreFinal
│   ├── package.json
│   ├── README.md
│   └── src
│   │   ├── environments
│   │   │   └── environment.ts
├── nodeApiFinal
│   ├── nodeapi
│   │   ├── lib
│   │   │   ├── ...
│   │   │   └── mongoConnection.js
│   │   └── package.json
│   └── README.md
└── scripts
│   ├── dev_backend_entrypoint.sh
│   ├── development_backend.sh
│   ├── development_frontend.sh
│   └── dev_frontend_entrypoint.sh
└── docker-compose.yml
```


## Setup

- Clone this repository

### Frontend code

- Create directory angularStoreFinal into the root project
- Download / clone frontend code from github repository into angularStoreFinal directory 
https://github.com/eduardovizuete/angularStoreFinal.git  
- Update connection to backend api service in file environment.ts with the name of service of ip number, example:

```javascript
apiEndpoint: 'http://10.32.0.26:3000',
```

### Backend code

- Create directory nodeApiFinal into the root project
- Download / clone backend code from github repository into nodeApiFinal directory
https://github.com/eduardovizuete/nodeApiFinal.git 
- Update connection to database in file mongoConnection.js with the name of service of ip number, example:

```javascript
mongoose.connect('mongodb://database_mongodb:27017/productAPI', { useMongoClient: true });
```

### Build and run containers

- Run the above command from root directory of project structure
```
$ docker-compose up --build 
```

## Test

http://localhost:3000

http://localhost:4200

