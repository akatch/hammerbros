# HammerBros Knowledge Base
Powered by Hugo

## Bare-Metal Setup
Install [golang](https://golang.org/doc/install)

Install [hugo_extended](https://gohugo.io/getting-started/installing)

Clone this repo and start the development server

```shell
git clone https://github.com/akatch/hammerbros
cd hammerbros/
git submodule update --init --recursive
hugo server
```

## Container Setup
Install [podman](https://podman-desktop.io/docs/intro) or [docker](https://docs.docker.com/get-docker/)

From the root of this project, run:

```shell
# podman
podman run -v .:/home/app --privileged -it --rm -p 1313:1313 betterweb/hugo:latest

# docker
docker run -v .:/home/app -it --rm -p 1313:1313 betterweb/hugo:latest
```

## Usage
Access the site in your web browser at http://127.0.0.1:1313. Hugo will detect file edits and update in your browser on the fly.

## Adding content
Add a new page

```shell
hugo new pages/my_cool_page.md
```
