neutron net-create db-service -f shell --variable id &&
neutron subnet-create `neutron net-show -f value -c id db-service` 10.100.0.0/16 --name default --dns-nameserver 8.8.8.8 -f shell --variable id &&
neutron router-interface-add `neutron router-show -f value -c id router04` `neutron subnet-show -f value -c id default`
