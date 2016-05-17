make sure your git passwords get cached or this will be painful

```
    git config --global credential.helper cache
```
and
```
    git config --global credential.helper 'cache --timeout=3600'
```

then

use curl
```
    curl -o- https://raw.githubusercontent.com/CarrickPark/enlist/master/enlist.sh | bash /dev/stdin all
```
or

use wget
```
    wget -qO- https://raw.githubusercontent.com/CarrickPark/enlist/master/enlist.sh | bash /dev/stdin all
```
