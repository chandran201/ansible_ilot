<config xmlns="urn:org:jgroups"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="urn:org:jgroups http://www.jgroups.org/schema/JGroups-3.4.xsd">
  <TCP
    bind_addr="match-interface:{{ dynamic_interface }}"
    bind_port="{{ jboss_node_port_offset + 20000 }}"
    port_range="5"
    recv_buf_size="8m"
    send_buf_size="640k"
    max_bundle_size="31k"
    enable_diagnostics="false"
    bundler_type="old"
    thread_naming_pattern="esacluster"
  />

  <TCPPING 
    initial_hosts="{{ pdsecgateway_host_list | join('[' + (jboss_node_port_offset + 20000)|string + '],') }} }}[{{ jboss_node_port_offset + 20000 }}]" 
    port_range="1" 
  />

  <MERGE3/>
  <FD_SOCK/>
  <FD timeout="3000" max_tries="5"/>
  <VERIFY_SUSPECT timeout="1500"/>
  <pbcast.NAKACK2/>
  <UNICAST3/>
  <pbcast.STABLE/>
  <pbcast.GMS/>
  <MFC/>
  <FRAG2 frag_size="30k"/>
</config>
