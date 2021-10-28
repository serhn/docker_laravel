## docker-compose for laravel

create laravel project

```sh
docker run --rm --interactive --tty \
  --volume $PWD:/app \
  composer create-project laravel/laravel laravel
```


clone this repository in laravel folder

```sh
cd laravel
git clone https://github.com/serhn/docker.git
```



create symlink  .env file

```sh
cd docker
ln -s ../.env ./

```

add in file .env 

DB_PASSROOT=yourpassword


for auto generate random password run:

```sh
./sh/init.sh
```


```sh
docker-compose up
```
