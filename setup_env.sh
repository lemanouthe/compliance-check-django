# echo DEBUG=0 >> .env
# echo DB_ENGINE=django.db.backends.postgresql >> .env
# echo DATABASE=postgres >> .env

# echo SECRET_KEY=$SECRET_KEY >> .env
# echo DATABASE=$DATABASE >> .env
# echo DB_USER=$DB_USER >> .env
# echo DB_PASSWORD=$DB_PASSWORD >> .env
# echo DB_HOST=$DB_HOST >> .env
# echo DB_PORT=$DB_PORT >> .env

# echo WEB_IMAGE=$IMAGE:web  >> .env
# echo NGINX_IMAGE=$IMAGE:nginx-proxy  >> .env
# echo CI_REGISTRY_USER=$CI_REGISTRY_USER   >> .env
# echo CI_JOB_TOKEN=$CI_JOB_TOKEN  >> .env
# echo CI_REGISTRY=$CI_REGISTRY  >> .env
# echo IMAGE=$CI_REGISTRY/$CI_PROJECT_NAMESPACE/$CI_PROJECT_NAME >> .env
# echo VIRTUAL_HOST=$VIRTUAL_HOST  >> .env
# echo VIRTUAL_PORT=$VIRTUAL_PORT  >> .env
# echo LETSENCRYPT_HOST=$LETSENCRYPT_HOST  >> .env

# # .env.staging.db
# echo POSTGRES_USER=$DB_USER  >> .env.staging.db
# echo POSTGRES_PASSWORD=$DB_PASSWORD  >> .env.staging.db
# echo POSTGRES_DB=$DATABASE  >> .env.staging.db
# echo POSTGRES_HOST_AUTH_METHOD=trust  >> .env.staging.db


# # .env.staging.proxy-companion
# echo DEFAULT_EMAIL=info@$VIRTUAL_HOST  >> .env.staging.proxy-companion
# #echo ACME_CA_URI=https://acme-staging-v02.api.letsencrypt.org/directory  >> .env.staging.proxy-companion
# echo NGINX_PROXY_CONTAINER=nginx-proxy  >> .env.staging.proxy-companion
# echo NGINX_DOCKER_GEN_CONTAINER=nginx-proxy-gen >> .env.staging.proxy-companion
