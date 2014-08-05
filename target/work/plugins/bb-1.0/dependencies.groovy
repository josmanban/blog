grails.project.work.dir = 'target'
grails.project.source.level = 1.6

grails.project.dependency.resolution = {
    inherits 'global'
    log 'warn'

    repositories {
        grailsCentral()
        mavenCentral()
    }

    dependencies {
        compile 'org.kefirsf:kefirbb:1.0'
    }

    plugins {
        build(':release:2.1.0', ':rest-client-builder:1.0.3') {
            export = false
        }
    }
}
