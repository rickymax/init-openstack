openstack flavor create minimal-lowmem --public --id 10 \
    --vcpus 1 --ram 2048 --disk 3 --ephemeral 10 &&
openstack flavor create minimal --public --id 11 \
    --vcpus 1 --ram 4096 --disk 3 --ephemeral 10 &&

openstack flavor create small-lowmem --public --id 13 \
    --vcpus 2 --ram 4096 --disk 3 --ephemeral 14 &&
openstack flavor create small --public --id 14 \
    --vcpus 2 --ram 8192 --disk 3 --ephemeral 14 &&
openstack flavor create small-highmem --public --id 15 \
    --vcpus 2 --ram 16384 --disk 3 --ephemeral 14 &&

openstack flavor create medium-lowmem --public --id 16 \
    --vcpus 4 --ram 8192 --disk 3 --ephemeral 18 &&
openstack flavor create medium --public --id 17 \
    --vcpus 4 --ram 16384 --disk 3 --ephemeral 18 &&
openstack flavor create medium-highmem --public --id 18 \
    --vcpus 4 --ram 32768 --disk 3 --ephemeral 18 &&

openstack flavor create small-50GB-ephemeral-disk --public --id 20 \
    --vcpus 2 --ram 8192 --disk 3 --ephemeral 50 &&
openstack flavor create medium-highmem-100GB-ephemeral-disk --public --id 21 \
    --vcpus 4 --ram 32768 --disk 3 --ephemeral 100
