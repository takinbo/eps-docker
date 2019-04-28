# eps-docker
dockerized electrum personal server

The purpose of this project is to simply the deployment process of an electrum
personal server using a docker container.

## Building

To build the docker image:

```
docker build -t eps .
```

## Configuration

A sample of the configuration settings is in `data/config.ini`. Edit 
the file to match your preferences.

You will need to update the IP address of the bitcoind host in the `[bitcoin-rpc]` 
section and possibly the path for the `datadir`. This will be `/root/.bitcoin` 
within the container so you may want to mount the hosts bitcoind datadir to this 
point or use whatever external volume was used for the data directory if you're 
running bitcoind within a docker container.

For more information about how to customize the electrum personal server, consult 
the [electrum personal server project](https://github.com/chris-belcher/electrum-personal-server)

## Running

```
docker run -v $(pwd)/data:/data -p 127.0.0.1:50002:50002 eps
```

## SSL

If you are planning to expose the container to the Internet, it is suggested that 
you regenerate the SSL private key and certificate before doing so. More details 
on how to do so may be found [here](https://github.com/spesmilo/electrum-server/blob/ce1b11d7f5f7a70a3b6cc7ec1d3e552436e54ffe/HOWTO.md#step-8-create-a-self-signed-ssl-cert)
