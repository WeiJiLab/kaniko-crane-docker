FROM gcr.io/go-containerregistry/crane AS crane

MAINTAINER TW ChinaSec <security-solution@thoughtworks.com>

FROM gcr.io/kaniko-project/executor:debug

COPY --from=crane /ko-app/crane /kaniko/

