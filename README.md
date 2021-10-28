## docker-compose for laravel

create laravel project

```sh
docker run --rm --interactive --tty \
  --volume $PWD:/app \
  --user $(id -u):$(id -g) \
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



for auto generate random password and add variable run:

```sh
./sh/init.sh
```


```sh
docker-compose up
```
