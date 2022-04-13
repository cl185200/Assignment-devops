#!/bin/bash
echo -n "Enter id of user : ";
read id;
CODE=$(curl -s -o response.txt -w "%{http_code}\n" "https://jsonplaceholder.typicode.com/users/$id") 
name=$(jq '.name' response.txt);
email=$(jq '.email' response.txt);
city=$(jq '.address.city' response.txt);
company_name=$(jq '.company.name' response.txt);
echo "Response code is : $CODE";
echo "Email of user is : $email";
echo "Name of user is :  $name";
echo "City of user is : $city";
echo "Company name is : $company_name";
