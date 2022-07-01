createdb:
	docker exec -it postgres12 createdb --username=root --owner=root simpleBank
dropdb:
	docker exec -it postgres12 dropdb simpleBank

.PHONY: createdb