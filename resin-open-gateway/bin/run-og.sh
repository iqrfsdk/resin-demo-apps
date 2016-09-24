#!/bin/bash

java -Djava.library.path=natives/armhf/osgi \
     -Dlogback.configurationFile=config/logback/logback.xml \
     -cp open-gateway-0.1.0.jar: \
     com.microrisc.opengateway.apps.monitoring.OpenGatewayApp
#    com.microrisc.opengateway.apps.monitoring.OpenGatewayApp > oga.log 2>&1

