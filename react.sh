#!/usr/bin/bash
figlet "< React app >"
echo Enter app name you wish to create:
read appName
if [ -z "$appName" ]; then
    echo "No app name provided exiting...."
    sleep 3
    exit
else
    echo "Creating your app $appName"
    yarn create react-app $appName
    cd $appName
    yarn add redux axios @reduxjs/toolkit react-router-dom react-redux sass
    yarn add @mui/icons-material @mui/material @reduxjs/toolkit styled-components
    yarn add redux-persist @emotion/styled @emotion/react @emotion/core
    yarn add moment moment-timezone
    echo Opening VS-code.....
    sleep 5
    code .
    
fi
