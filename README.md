# HammerBros Knowledge Base
Powered by Hugo

## Bare-Metal Setup
Install [hugo_extended][]

Clone this repo and start the development server

```shell
git clone https://github.com/akatch/hammerbros
cd hammerbros/
git submodule update --init --recursive
hugo server
```

## Container Setup
Install [podman and podman-compose][podman] or [docker and docker-compose][docker]

From the root of this project, run:

```shell
docker-compose up
```

## Usage
Access the site in your web browser at http://127.0.0.1:1313. Hugo will detect file edits and update in your browser on the fly.

## Adding content
Add a new page

```shell
hugo new content/pages/my_cool_page.md
```

[hugo_extended]: https://gohugo.io/getting-started/installing
[docker]: https://docs.docker.com/get-docker/
[podman]: https://podman-desktop.io/docs/intro
