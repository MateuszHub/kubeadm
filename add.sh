docker run --name enable_lio                  \
           --privileged                       \
           --rm                               \
           --cap-add=SYS_ADMIN                \
           -v /lib/modules:/lib/modules       \
           -v /sys:/sys:rshared               \
           -v /var/opt/mssql:/var/opt/mssql:rshared               \
           storageos/init:0.2
