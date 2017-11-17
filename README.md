# Lecheck
----------------------------------
## Let's Encrypt Checker v0.1 - Work in progress

Simple tool writen for personal use. It will check if a given domain will pass or not the Let's Encrypt validation checks without exceeding the attempts Let's Encrypt provides.

_Usage:_

```
rootie@penguing-server$ sh ./lecheck.sh andyvasile.com
http:// -> magnific! 
http://www -> Oui !!
```
If something doesn't go right, it will tell the error and where the domain is redirecting:

```
rootie@penguing-server$ sh ./lecheck.sh andyvasile.com
Sacrebleu!!
http:// ->>> Location: https://andyvasile.com/

Sacrebleu!!
http://www ->>> Location: https://andyvasile.com/
```
