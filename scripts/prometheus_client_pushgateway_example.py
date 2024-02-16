# Example of implementation in Python
from prometheus_client import CollectorRegistry, Gauge, push_to_gateway, Counter
import os
import time
 
registry = CollectorRegistry()
 
# metrics initialization
g = Gauge('random_per_second', 'Random number to simulate gauge',["application"], registry=registry)
c = Counter("basic_count","Basic counter simulation",["application"], registry=registry)
 
while True:
    random_per_second = int.from_bytes(os.urandom(3),"little")
    g.labels("MyApp").set(random_per_second)
    push_to_gateway('pushgateway:9091', job='MyApp_Pushgateway', registry=registry)
 
    c.labels("MyApp").inc()
    push_to_gateway('pushgateway:9091', job="MyApp_Pushgateway", registry=registry)

    time.sleep(10)
