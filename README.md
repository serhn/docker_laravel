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





for auto generate random password and add variable run:

```sh
cd docker
./sh/init.sh
```


```sh
docker-compose up
```
