dirname=$(pwd)

function setGitEnvironments() {
    echo "===== Setting git environments ====="
    cd ${dirname}/server
    git update-index --skip-worktree ./public/*
}

function npmInstallClient() {
    echo "===== Installing client npm modules ====="
    cd ${dirname}/client
    npm install
}

function npmInstallServer() {
    echo "===== Installing server npm modules ====="
    cd ${dirname}/server
    npm install
}

setGitEnvironments
npmInstallClient
npmInstallServer
echo "===== Prepare finished!! ====="