FROM node:10

LABEL version="1.0.0"
LABEL repository="http://github.com/bearer/npm"
LABEL homepage="http://github.com/actions/npm"
LABEL maintainer="Bearer team <support+actions@github.com>"

LABEL com.github.actions.name="GitHub Action for bearer"
LABEL com.github.actions.description="Wraps the npm CLI to enable push command."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
