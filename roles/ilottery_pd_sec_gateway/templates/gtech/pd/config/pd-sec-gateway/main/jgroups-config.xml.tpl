<config xmlns="urn:org:jgroups"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="urn:org:jgroups http://www.jgroups.org/schema/JGroups-3.4.xsd">
  <TCP
    bind_addr="{{ jboss_listen_ip }}"
    bind_port="{{ jboss_node_port_offset + 20000 }}"
    recv_buf_size="${tcp.recv_buf_size:20m}"
    send_buf_size="${tcp.send_buf_size:20m}"
    max_bundle_size="64K"
    sock_conn_timeout="300"
    thread_pool.min_threads="0"
    thread_pool.max_threads="30"
    thread_pool.keep_alive_time="20000"/>

  <TCPPING initial_hosts="{{ pdsecgateway_host_list | join('[' + (jboss_node_port_offset + 20000)|string + '],') }}[{{ jboss_node_port_offset + 20000 }}]" port_range="2"/>

  <MERGE3/>
  <FD_SOCK/>
  <FD/>
  <VERIFY_SUSPECT/>
  <pbcast.NAKACK2/>
  <UNICAST3/>
  <pbcast.STABLE/>
  <pbcast.GMS/>
  <MFC/>
  <FRAG2/>

</config>
