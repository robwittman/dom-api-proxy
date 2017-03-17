node("docker") {
    docker.withRegistry('http://registry:5000', '') {

        git url: "http://bitbucket:7990/scm/rout/api-router.git", credentialsId: 'GITCREDS'

        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id

        stage "build"
        def app = docker.build "build-api-router"

        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
