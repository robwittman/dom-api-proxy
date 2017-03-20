
    docker.withRegistry('robbybugatti/dom-api-proxy', 'DOCKER_HUB_ID') {

        git url: "https://github.com/robwittman/dom-api-proxy", credentialsId: 'GITCREDS'

        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id

        stage "build"

        def app = docker.build "robbybugatti/dom-api-proxy"

        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
