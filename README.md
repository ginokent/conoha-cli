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
configure       flavors         images          ports           securitygroups  servers         sg              subnets         tools           version
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
$ conoha images list
{
  "images": [
    [
      {
        "id": "5a026e16-1444-47e4-a3d1-300424c701a7",
        "name": "vmi-centos-7.6-amd64-20gb"
      },
      {
        "id": "5992339d-9eea-4dc8-9a68-54dbab070e33",
        "name": "vmi-centos-7.6-amd64"
      },
      {
        "id": "53b12ef5-702c-4559-b937-c4066f4ae0ec",
        "name": "vmi-win2016dce-rdsoffice2016"
      },
  ...
```
