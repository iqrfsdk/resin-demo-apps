#!/bin/bash

java -Djava.library.path=bin/natives/armhf/osgi \
     -Dlogback.configurationFile=bin/config/logback/logback.xml \
     -cp bin/open-gateway-0.1.0.jar: \
     com.microrisc.opengateway.apps.monitoring.OpenGatewayApp
#    com.microrisc.opengateway.apps.monitoring.OpenGatewayApp > oga.log 2>&1

