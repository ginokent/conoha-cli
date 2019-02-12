# conoha-cli

[ConoHa](https://www.conoha.jp/) Command Line Interface written in shell script.

### Dependencies

- `curl`
- [`jq`](https://stedolan.github.io/jq/)

### Install

```console
$ curl -LRsS https://raw.githubusercontent.com/djeeno/conoha-cli/0.0.1/conoha -o /tmp/conoha
$ chmod +x /tmp/conoha
$ sudo mv /tmp/conoha /usr/local/bin/conoha
```

### Tab completion

```console
$ . "$(conoha complete)"

$ conoha  # <tab>
configure       flavors         images          keypairs        ports           securitygroups  servers         subnets         tools           version
```

### Set Credentials

```console
$ conoha configure
ref. https://manage.conoha.jp/API/
ConoHa Tenant ID: foobar
ConoHa API Account Username: foobar
ConoHa API Account Password:
```

### Run

```console
$ conoha images list | jq '.images[] | select(.name | match("vmi-ubuntu-18.04-amd64-20gb")) | { name, id }'
{
  "name": "vmi-ubuntu-18.04-amd64-20gb",
  "id": "1ae808e4-f4ee-4ee6-adfc-0ba8c2bf67f3"
}
```
