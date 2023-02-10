## mongo-playground

Run the following command to start the playground

```bash
./playground.sh -s mongo
```

Following are the details to connect to the database

```text
Host: localhost
Port: 37017
Database: northwind
```

You can use the following command to run commands on the database
```bash
docker exec -it db_playground_mongo mongosh
```
