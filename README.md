# Confluence - MySQL

## Prequisites

Have a recent version of docker installed.

## Preparation

Choose useful passwords for MySQL in docker-compose.yaml

```bash
  $ mkdir data
```

Download `mysql-connector-java-5.1.47.jar` and put it into `mysql/connector`.

## Startup

```bash
  $ docker-compose up
```

## Configuration

Navigate to `localhost:8090`. You should see confluence setup ui.
Choose `Productive` then choose `Use your own database` and choose MySQL in the database configuration.
Hostname is `mysql`, user and database `confluence`, password was chosen by you :-)

## Backup

### MySQL

Find out container-id.

```bash
  docker ps
```

Replace container id with the id of MySQL container.
Replace yourpw with the MySQL root password.

```bash
  docker exec container-id /usr/bin/mysqldump -u root --password=yourpw confluence > backup.sql
```

#### Restore

```bash
cat backup.sql | docker exec -i container-id /usr/bin/mysql -u root --password=yourpw DATABASE
```

### Confluence

Option a)

```bash
cp -r ./data /your/backup/location
```

Option b)
Use confluence internal backup solution
