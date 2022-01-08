# juicefs  with mysql learning


## Starting mysql && s3

```code
docker-compose up -d
```

## Fomart juicefs

```code
juicefs format --storage minio \
    --bucket http://127.0.0.1:9000/jfs \
    --access-key minio \
    --secret-key minio123 \
    "mysql://root:dalongdemo@(127.0.0.1:3306)/juicefs" \
    pics
```

## Mount

```code
sudo juicefs mount -d "mysql://root:dalongdemo@(127.0.0.1:3306)/juicefs"  apps
```

## Dump metadata

```code
juicefs dump "mysql://root:dalongdemo@(127.0.0.1:3306)/juicefs" meta.dump
```

## Bench

```code
juicefs bench  apps
```