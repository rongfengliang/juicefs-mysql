
#!/bin/sh

juicefs format --storage minio \
    --bucket http://127.0.0.1:9000/jfs \
    --access-key minio \
    --secret-key minio123 \
    "mysql://root:dalongdemo@(127.0.0.1:3306)/juicefs" \
    pics