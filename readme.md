# Rapid Prototyping with Node-Red + Docker

This project intends to facilitate and demonstrate how you can rapidly prototype web architectures using a combination of docker-compose and node-red for service operations.

## Prerequisites:

* Docker and Docker Compose installed.
* Make

## Usage:

### Start up:

To run the stack you only need to issue:
```sh
make run
```

You should see log output from the resources specified in [docker-compose.yml](docker-compose.yml)

Once node red is started you will see log items like:

```
red_1    | 8 Jan 00:37:47 - [info] Starting flows
red_1    | 8 Jan 00:37:47 - [info] Started flows
red_1    | 8 Jan 00:37:47 - [info] Server now running at http://127.0.0.1:1880/
```

Open a browser to http://127.0.0.1:1880/  to see the node red admin interface.

### Custom Module Helper

You can easily stub out a custom module for your node-red project using a utility script.  To use it run:

```sh
make module name=<modulename>
```
modulename should be lowercase, hyphens, no spaces.

Once node-red restarts, you will find a "`<modulename> noop`" node in the 'Custom' section of the node palette.

