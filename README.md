***Default***

Without any ENV image will create db:

db-name: ***development***  
db-user: ***development***  
db-password: ***development***

root-password: ***root***  

```bash
docker run -it -v `pwd`/mysql:/var/lib/mysql bmxmale/docker-mysql-data-initializer:8.0
```

***With SQL load from schema dir, will load all sh/sql/sql.gz files.***

```bash
docker run -it -v `pwd`/mysql:/var/lib/mysql -v `pwd`/schema:/docker-entrypoint-initdb.d bmxmale/docker-mysql-data-initializer:latest
```