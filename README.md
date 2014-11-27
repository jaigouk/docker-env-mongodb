To setup local dev env that mirrors server env.

### Init

on local machine,

```
git clone https://github.com/jaigouk/docker-volt-mongodb.git
cd docker-volt-mongodb
docker build -t jaigouk/docker-volt-mongodb .

git clone https://github.com/jaigouk/docker-volt-data.git ~/docker-volt-data
```

Run

```
docker run -p 43153:27017 -v ~/docker-volt-data/db:/data jaigouk/docker-volt-mongodb
```
