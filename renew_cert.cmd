@echo off
cd \lego
set /p EMAIL=<account_email
:: or "run" instead of "renew"?
lego --domains laliari.logiclrd.cx --email %EMAIL% --tls renew

echo Updated certificate is now in C:\lego\.lego, next step is to install into %%HOMEPATH%%\.lego