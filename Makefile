postgres:
	docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e  POSTGRES_PASSWORD=syspass -d postgres:12-alpine
createdb:
	docker exec -it postgres12 createdb --username=root --owner=root simpleBank
dropdb:
	docker exec -it postgres12 dropdb simpleBank

migrateup:
	migrate -path db/migration -databse "postgresql://root:syspass@localhost:5432/simpleBank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -databse "postgresql://root:syspass@localhost:5432/simpleBank?sslmode=disable" -verbose down
.PHONY: postgres createdb dropdb migrateup migratedown