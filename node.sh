#!/usr/bin/bash
figlet "< NodeJS APP >"
echo Enter app name you wish to create:
read appName
if [ -z "$appName" ]; then
    echo "No app name provided exiting...."
    sleep 3
    exit
else
    echo "Creating your app template $appName"
    mkdir $appName
    cd $appName
    npm init -y
    yarn add express helmet jsonwebtoken mongoose cors dotenv nodemailer winston express-winston
    yarn add morgan bcryptjs nodemailer-html-to-text node-fetch 
    yarn add -D nodemon prettier supertest jest eslint
    echo Opening VS-code.....
    sleep 5
    code .
    
fi
