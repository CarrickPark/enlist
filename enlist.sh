# Check out sources for Carrick Park
echo ''
echo '  Enlist Carrick Park Repositories'
echo ''

CWD=`pwd`

OPERATIONS=false
ENGINEERING=false

if [ "$1" == "all" ]; then
  OPERATIONS=true
  ENGINEERING=true
elif [ "$1" == "eng" ]; then
  ENGINEERING=true
elif [ "$1" == "ops" ]; then
  OPERATIONS=true
else
  echo '  Usage: enlist ops|eng|all'
  echo ''
fi

if [[ $OPERATIONS == true || $ENGINEERING == true ]]; then
  if [ ! -d "$CWD/cp" ]; then
    mkdir "$CWD/cp"
  fi

  cd "$CWD/cp"

  if [ $OPERATIONS == true ]; then
    echo "  Enlisting Operations Repos to $CWD/cp/operations"
    echo ''

    cd $CWD

    if [ ! -d "$CWD/cp/operations" ]; then
      mkdir "$CWD/cp/operations"
    fi

    cd "$CWD/cp/operations"

    git clone https://github.com/CarrickPark/operations.git
    git clone https://github.com/CarrickPark/app.git
    git clone https://github.com/CarrickPark/config.git
    git clone https://github.com/CarrickPark/db.git
    git clone https://github.com/CarrickPark/webcache.git
    git clone https://github.com/CarrickPark/passthrough.git
    git clone https://github.com/CarrickPark/frontline.git
    git clone https://github.com/CarrickPark/static.git
    git clone https://github.com/CarrickPark/orchestrator.git
    git clone https://github.com/CarrickPark/containerbase.git

  fi

  if [ $ENGINEERING == true ]; then
    echo "  Enlisting Engineering Repos to $CWD/cp/engineering"
    echo ''

    cd $CWD

    if [ ! -d "$CWD/cp/engineering" ]; then
      mkdir "$CWD/cp/engineering"
    fi

    cd "$CWD/cp/engineering"

    git clone https://github.com/CarrickPark/engineering.git
    git clone https://github.com/CarrickPark/core.git

  fi

  cd "$CWD"

  echo '  Enlistment Complete'
  echo ''
fi
