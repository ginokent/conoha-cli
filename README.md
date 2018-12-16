# conoha-cli

[ConoHa](https://www.conoha.jp/) CLI written in shell script.

### Dependencies

- `curl`
- [`jq`](https://stedolan.github.io/jq/)

### Install

```console
$ curl -sS https://raw.githubusercontent.com/djeeno/conoha-cli/master/conoha -o /tmp/conoha
$ sudo mv /tmp/conoha /usr/local/bin/conoha
$ sudo chmod +x /usr/local/bin/conoha
```

### Tab completion

```console
$ . "$(command -v conoha)"

$ conoha  # <tab>
configure      flavor         image          port           securitygroup  server         sg             subnet         tools
```

### Set Credentials

```console
$ conoha configure
ref: https://manage.conoha.jp/API/
ConoHa Tenant ID: foobar
ConoHa API Account Username: foobar
ConoHa API Account Password:
```

### Run

```console
$ conoha image list-images
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
