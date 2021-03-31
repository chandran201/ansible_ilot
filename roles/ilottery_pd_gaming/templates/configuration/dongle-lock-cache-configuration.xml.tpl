<infinispan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="urn:infinispan:config:9.3 http://www.infinispan.org/schemas/infinispan-config-9.3.xsd"
    xmlns="urn:infinispan:config:9.3">

  <jgroups>
    <stack-file name="external-file" path="/etc/gtech/pd/config/pd-gaming/main/gis/jgroups-config.xml"/>
  </jgroups>

  <cache-container>
    <transport stack="external-file"/>
    <replicated-cache-configuration name="replicated-config">
      <eviction strategy="LIRS" max-entries="65535"/>
    </replicated-cache-configuration>

    <replicated-cache name="DONGLE_LOCK_CACHE" mode="SYNC" configuration="replicated-config"/>
    <replicated-cache name="CART_ID_DONGLE_LOCK_CACHE" mode="SYNC" configuration="replicated-config"/>
  </cache-container>

</infinispan>
