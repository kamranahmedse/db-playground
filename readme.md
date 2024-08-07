# db-playground

> Setup any database playground with sample data in seconds

The repository has a simple docker-compose file and a few scripts to set up any database playground with sample data in
seconds. It is a great way to test your database queries and learn about the database.

You can run a single command to setup [Northwind](https://en.wikiversity.org/wiki/Database_Examples/Northwind) dataset in PostgreSQL, MySQL, PostgreSQL and some sample indexes (omdb and shakespeare) in Elasticsearch.

## Usage

Make sure you have [Docker](https://docs.docker.com/get-docker/) installed and running.

After that, you can clone the repository and run any of the available services either using `Makefile` or `playground.sh` script.

### Using Makefile

To spin up any of the services, run any of the below commands in a terminal

```shell
# run any of the below commands to start the relevant service
make postgres
make mysql
make mongo
make elasticsearch
make redis
```

Once the service is up, you can run the below command in another terminal to connect to the service
```shell
make postgres-cli
make mysql-cli
make mongo-cli
make elasticsearch-cli
make redis-cli
```

### Using playground.sh

```shell
# See what you can do with playground
./playground.sh -h

# run all the services using one of the following
./playground.sh
./playground.sh -s all

# run a single service
./playground.sh -s mongo
./playground.sh -s mysql
./playground.sh -s posgres
./playground.sh -s elasticsearch
./playground.sh -s redis

# clean up the playground
./playground.sh -c

# clean up the playground and run the services
./playground.sh -c -s all
./playground.sh -c -s mongo
./playground.sh -c -s postgres
./playground.sh -c -s elasticsearch
./playground.sh -c -s redis
./playground.sh -c -s mysql
```

You can also ue the `docker-compose` command directly to run the services.

```shell
# run all the services
docker-compose up -d

# run a single service
docker-compose up -d mongo

# clean up the playground
docker-compose down
```

## Database Credentials

Given below are the default configuration for the databases.

### PostgreSQL

Following are the details to connect to the database

```text
Host:     localhost
Port:     6432
Username: admin
Password: admin
Database: northwind
```
You can use the following command to run commands on the database
```bash
docker exec -it db_playground_postgres psql -U admin -d northwind
```

### MySQL

Following are the details to connect to the database

```text
Host:     localhost
Port:     4306
Username: admin
Password: admin
Database: northwind
```
You can use the following command to run commands on the database
```bash
docker exec -it db_playground_mysql mysql -uadmin -padmin
```

## MongoDB

Following are the details to connect to MongoDB

```text
Host:     localhost
Port:     37017
Database: northwind
```

You can use the following command to run commands on the database

```bash
docker exec -it db_playground_mongo mongosh
```

## Elasticsearch

Following are the details to connect to Elasticsearch

```text
Host:     localhost
Port:     9200
Indexes:  omdb, shakespear
```

You can use the following command to run commands on the container

```bash
docker exec -it db_playground_elasticsearch sh
```

## Redis

Following are the details to connect to Redis

```text
Host:     localhost
Port:     6379
```

You can use the following command to run commands on the container

```bash
docker exec -it db_playground_redis redis-cli
```

## Contributing

* Add support for more databases
* Suggest features
* Discuss ideas in issues
* Spread the word

## License

MIT © [Kamran Ahmed](https://twitter.com/kamranahmedse)
