# Selectel DNS Authenticator plugin for Certbot

A certbot dns plugin to obtain certificates using Selectel DNS.

## Obtain DNS API key

https://my.selectel.ru/profile/apikeys

## Install

pip install certbot-dns-selectel-v2

## Credentials File

```
certbot_dns_selectel_v2:dns_selectel_api_key = XXXXXXXXXXXXXXXXXXXXXXXXX_XXXXXX
```

```bash
chmod 600 /path/to/credentials.ini
```

## Obtain Certificates

```bash
certbot certonly -a certbot-dns-selectel-v2:dns-selectel-v2 \
  --certbot-dns-selectel-v2:dns-selectel-v2-credentials /path/to/credentials.ini \
  --certbot-dns-selectel-v2:dns-selectel-v2-propagation-seconds 30 \
  -d example.com \
  -d "*.example.com" \
  -m admin@example.com \
  --agree-tos -n
```

## Use Docker

```bash
docker run -v /path/to/credentials.ini:/credentials.ini -ti \
  --name example.com.certbot \
  shm013/certbot-dns-selectel-v2 certonly -a certbot-dns-selectel-v2:dns-selectel-v2 \
  --certbot-dns-selectel-v2:dns-selectel-v2-credentials /credentials.ini \
  --certbot-dns-selectel-v2:dns-selectel-v2-propagation-seconds 30 \
  -d example.com \
  -d "*.example.com" \
  -m admin@example.com \
  --agree-tos -n
```
