<infinispan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="urn:infinispan:config:9.3 http://www.infinispan.org/schemas/infinispan-config-9.3.xsd"
    xmlns="urn:infinispan:config:9.3">

  <jgroups>
    <stack-file name="external-file" path="jgroups-config.xml"/>
  </jgroups>

  <cache-container>
    <transport stack="external-file"/>

    <local-cache-configuration name="local-config">
      <eviction strategy="LIRS" max-entries="65535"/>
      <expiration interval="10000" max-idle="900000"/>
    </local-cache-configuration>

    <replicated-cache-configuration name="replicated-config">
      <eviction strategy="LIRS" max-entries="65535"/>
      <expiration interval="10000" max-idle="900000"/>
    </replicated-cache-configuration>

    <local-cache name="PLAYER_LIMITS_CACHE_SINGLE" configuration="local-config"/>
    <local-cache name="SESSION_LIMITS_CACHE_SINGLE" configuration="local-config"/>
    <local-cache name="PLAYER_DATA_CACHE_SINGLE" configuration="local-config"/>

    <replicated-cache name="SESSION_LIMITS_CACHE_REPLICATED" mode="SYNC" configuration="replicated-config"/>
    <replicated-cache name="PLAYER_LIMITS_CACHE_REPLICATED" mode="SYNC" configuration="replicated-config"/>
    <replicated-cache name="PLAYER_DATA_CACHE_REPLICATED" mode="SYNC" configuration="replicated-config"/>
  </cache-container>

</infinispan>
