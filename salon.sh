#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n ~~~~~ MY SALON ~~~~~ \n"
echo  "Welcome to My Salon, how can I help you?"
 

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi





echo -e "\n1) cut\n2) color\n3) perm\n4) style \n5) trim"
read SERVICE_ID_SELECTED


# case $SERVICE_ID_SELECTED in
#     1) MAIN_SERVICES;;
#     2) EXIT;;
#     *) MAIN_MENU "I could not find that service. What would you like today?" ;;
#   esac
# }


  AVAILABLE_SERVICES=$($PSQL "SELECT service_id, name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")

  if [[ -z $AVAILABLE_SERVICES ]]
  then
      MAIN_MENU "Sorry, we don't have any bikes available right now."
      else
          echo "$AVAILABLE_SERVICES" | while read SERVICE_ID NAME
          do
            echo "$SERVICE_ID) $NAME service"
            done

    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE

    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      INSERTED=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
      
      
    fi
    echo -e "\nWhat time would you like your$SERVICE_NAME,$CUSTOMER_NAME?"
    read SERVICE_TIME

    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  
    INSERTED_APPOINTMENTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
    echo -e "\nI have put you down for a cut at $SERVICE_TIME, $CUSTOMER_NAME."
   
  fi

}

MAIN_MENU



