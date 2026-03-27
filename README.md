**1. Install Required Packages:Again, with the virtual environment active, execute:**

``` bash
pip3 install -r requirements.txt
```

**2. Running Tests Locally**

``` bash
robot -d testResult -v ENV:uat -v LANG:th -v PLATFORM:web -L DEBUG -i TC_WEB_POC_001 ./testcases
```