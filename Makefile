.PHONY: redis redis-cli mongo mongo-cli postgres postgres-cli mysql mysql-cli elasticsearch elasticsearch-cli

redis:
	./playground.sh -s redis
redis-cli:
	@docker exec -it db_playground_redis redis-cli

mongo:
	./playground.sh -s mongo
mongo-cli:
	@docker exec -it db_playground_mongo mongosh

postgres:
	./playground.sh -s postgres
postgres-cli:
	@docker exec -it db_playground_postgres psql -U admin -d northwind

mysql:
	./playground.sh -s mysql
mysql-cli:
	@docker exec -it db_playground_mysql mysql -u admin -padmin -D northwind

elasticsearch:
	./playground.sh -s elasticsearch
elasticsearch-cli:
	@echo "Visit http://localhost:9200/_cat/indices?v"