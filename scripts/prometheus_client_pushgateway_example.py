# Example of implementation in Python
from prometheus_client import CollectorRegistry, Gauge, push_to_gateway, Counter
import os
import time
from random import randint
 
registry = CollectorRegistry()
 
# metrics initialization
c = Counter("basic_count","Basic counter simulation",["application"], registry=registry)
 
while True:

    c.labels("MyApp").inc()
    push_to_gateway('pushgateway:9091', job="MyApp_Pushgateway", registry=registry)

    print('metrics sent..')
    time.sleep(randint(1, 10))
