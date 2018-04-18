neutron security-group-create WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol icmp --direction ingress --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 22 --port_range_max 22 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 80 --port_range_max 80 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 1883 --port_range_max 1883 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 443 --port_range_max 443 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 3000 --port_range_max 3000 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 4443 --port_range_max 4443 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 5432 --port_range_max 5432 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 5671 --port_range_max 5671 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 6379 --port_range_max 6379 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 8086 --port_range_max 8086 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 8883 --port_range_max 8883 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 9090 --port_range_max 9090 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 9093 --port_range_max 9093 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 25555 --port_range_max 25555 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 27017 --port_range_max 27017 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol udp --direction ingress --port_range_min 68 --port_range_max 68 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol udp --direction ingress --port_range_min 3457 --port_range_max 3457 --remote_ip_prefix 0.0.0.0/0 --ethertype IPv4 WISE-PaaS-nsg &&

neutron security-group-rule-create --protocol tcp --direction ingress --port_range_min 1 --port_range_max 65535 --ethertype IPv4 --remote-group-id `neutron security-group-show -f value -c id WISE-PaaS-nsg` WISE-PaaS-nsg &&
neutron security-group-rule-create --protocol udp --direction ingress --port_range_min 1 --port_range_max 65535 --ethertype IPv4 --remote-group-id `neutron security-group-show -f value -c id WISE-PaaS-nsg` WISE-PaaS-nsg
