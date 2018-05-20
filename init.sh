dirname=$(pwd)

function setGitEnvironments() {
    echo "===== Setting git environments ====="
    git submodule update --init
    cd "${dirname}/server/public"
    git update-index --skip-worktree ./index.html
}

function npmInstallClient() {
    echo "===== Installing client npm modules ====="
    cd "${dirname}/client"
    npm install
}

function npmInstallServer() {
    echo "===== Installing server npm modules ====="
    cd "${dirname}/server"
    npm install
}

setGitEnvironments
npmInstallClient
npmInstallServer
echo "===== Prepare finished!! ====="