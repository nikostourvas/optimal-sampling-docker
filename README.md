# optimal-sampling-docker
A docker repo recommended for use in conjuction with https://github.com/nikostourvas/optimal_sampling

In order to use it, you will have to install Docker in your OS.
After that you can simply run:
```
docker run --name popgen --rm -dp 8787:8787 -e PASSWORD=testtest -e ROOT=TRUE -v "`pwd`":/home/rstudio/working nikostourvas/optimal-sampling-docker
```
