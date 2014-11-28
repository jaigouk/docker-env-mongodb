To setup local dev env that mirrors server env.

### Init

```
mkdir -p my_data/db
vi my_data/db/mongodb.conf
docker run -d --name data my_data tail -f /dev/null
```

### Run

```
docker run -d -p 43153:27017 \
--name "mongo" \
--restart=always \
--volumes-from data \
jaigouk/docker-volt-mongodb
```
