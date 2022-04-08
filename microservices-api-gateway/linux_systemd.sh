     #!/bin/sh
     PROJECT_PATH=/home/ec2-user/myapp/microservices-springboot-demo
     CUSTOM_SERVICE_NAME=microservices-api-gateway
     JAR_FILE_PATH=$PROJECT_PATH/microservices-api-gateway/target/microservices-api-gateway.jar
     PID_NAME_PATH=/tmp/microservices-api-gateway-pid
     case $1 in
     start)
        echo "Starting $CUSTOM_SERVICE_NAME ..."
        if [ ! -f $PID_NAME_PATH ]; then
           nohup java -jar $JAR_FILE_PATH /tmp 2>> /dev/null >>/dev/null & echo $! > $PID_NAME_PATH
           sleep 10
           echo "$CUSTOM_SERVICE_NAME started ..."
        else
           echo "$CUSTOM_SERVICE_NAME is already running ..."
        fi
        ;;
     stop)

     if [ -f $PID_NAME_PATH ]; then
        PID=$(cat $PID_NAME_PATH);
           echo "$CUSTOM_SERVICE_NAME stopping ..."
        kill $PID;
        echo "$CUSTOM_SERVICE_NAME stopped ..."
        rm $PID_NAME_PATH
     else
        echo "$CUSTOM_SERVICE_NAME is not running ..."
     fi
     ;;

     restart)
     if [ -f $PID_NAME_PATH ]; then
        PID=$(cat $PID_NAME_PATH);
        echo "$CUSTOM_SERVICE_NAME stopping ...";
        kill $PID;
        echo "$CUSTOM_SERVICE_NAME stopped ...";
        rm $PID_NAME_PATH
        echo "$CUSTOM_SERVICE_NAME starting ..."
        nohup java -jar $JAR_FILE_PATH /tmp 2>> /dev/null >> /dev/null & echo $! > $PID_NAME_PATH
        echo "$CUSTOM_SERVICE_NAME started ..."
     else
        echo "$CUSTOM_SERVICE_NAME is not running ..."
     fi
     ;;

     esac