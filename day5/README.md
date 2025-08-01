# unisys_devsecops28thjuly2025

### Understanding POST DAST -- pentesting process 

<img src="rev1.png">

### SAST & SCA 

<img src="rev2.png">

### zap report 

```
 114  mkdir hello 
  115  cd hello/
  116  docker run -it --rm -v $(pwd):/zap/wrk:rw ghcr.io/zaproxy/zaproxy zap-full-scan.py  -t http://172.31.44.127  -g gen.conf -r testport.html
  117   
  118  docker run -it --rm -v $(pwd):/zap/wrk:rw ghcr.io/zaproxy/zaproxy zap-full-scan.py  -t https://app.delvex.io   -g gen.conf -r ashu-port.html
  119  ls
  120  sudo cp -v ashu-port.html  /var/www/html/
```

### SEc benchmarks like CIS / NIST 

<img src="sec2.png">

### ansible for patch / fixing management 

<img src="sec3.png">

### ansible understanding 

<img src="sec4.png">

### ansible architecture understanding 

<img src="sec5.png">