ARG_QUANTITY=$#
if [ ARG_QUANTITY != 20 ]
then
  echo "Not enough arguments!. Expect: 20. Actual $ARG_QUANTITY"
  exit 1
fi

MASTERFILE=./config/testing_template.properties
DESTFILE=./config/testing.properties

cp $MASTERFILE $DESTFILE

sed -i -e "s|\$TESTING_HOST|${1}|g" $DESTFILE
sed -i -e "s|\$GAROON_VERSION|${2}|g" $DESTFILE
sed -i -e "s|\$ADMIN_USER_NAME|${3}|g" $DESTFILE
sed -i -e "s|\$PASSWORD|${4}|g" $DESTFILE
sed -i -e "s|\$GAROON_TYPE|${5}|g" $DESTFILE

# Mail Server Info Section
sed -i -e "s|\$MAIL_SERVER_NAME|${6}|g" $DESTFILE
sed -i -e "s|\$OUTGOING_MAIL_SERVER|${7}|g" $DESTFILE
sed -i -e "s|\$OUTGOING_PORT_NUMBER|${8}|g" $DESTFILE
sed -i -e "s|\$ENCRYPTION_TYPE|${9}|g" $DESTFILE
sed -i -e "s|\$SMTP_AUTHENTICATION_TYPE|${10}|g" $DESTFILE
sed -i -e "s|\$INCOMING_MAIL_SERVER|${11}|g" $DESTFILE
sed -i -e "s|\$RECEIVE_PROTOCOL|${12}|g" $DESTFILE
sed -i -e "s|\$INCOMING_PORT_NUMBER|${13}|g" $DESTFILE
sed -i -e "s|\$USE_OF_SSL|${14}|g" $DESTFILE

# Setting up email account for user
sed -i -e "s|\$USER_EMAIL_ADDRESS|${15}|g" $DESTFILE
sed -i -e "s|\$EMAIL_USER_ACCOUNT|${16}|g" $DESTFILE
sed -i -e "s|\$EMAIL_ACCOUNT_PASSWORD|${17}|g" $DESTFILE

# Mail source library kintone app info
sed -i -e "s|\$APP_ID|${18}|g" $DESTFILE
sed -i -e "s|\$API_TOKEN|${19}|g" $DESTFILE
sed -i -e "s|\$IGNORE_MAILSOURCE_IDS|${20}|g" $DESTFILE
