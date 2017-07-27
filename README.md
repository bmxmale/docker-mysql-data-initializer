***Default***

Without any ENV image will create db:

db-name: ***magento***  
db-user: ***magento***  
db-password: ***magento***

root-password: ***root***  

```bash
docker run -it -v `pwd`/mysql:/var/lib/mysql bmxmale/docker-mysql-data-initializer:latest
```

***With SQL load from schema dir, will load all sh/sql/sql.gz files.***

```bash
docker run -it -v `pwd`/mysql:/var/lib/mysql -v `pwd`/schema:/docker-entrypoint-initdb.d bmxmale/docker-mysql-data-initializer:latest
```