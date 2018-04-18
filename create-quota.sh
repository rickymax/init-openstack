openstack quota set WISE-PaaS \
    --cores 288 \
    --instances 100 \
    --volumes 100 \
    --gigabytes 13000 \
    --ram 393216 &&

neutron quota-update --tenant_id `openstack project show -f value -c id WISE-PaaS` --port 100
