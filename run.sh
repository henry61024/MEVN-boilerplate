dirname=$(pwd)

function buildClient() {
    echo "===== Building client production ====="
    cd "${dirname}/client"
    npm run build
}

function startServer() {
    echo "===== Starting server ====="
    cd "${dirname}/server"
    npm start
}

buildClient
startServer