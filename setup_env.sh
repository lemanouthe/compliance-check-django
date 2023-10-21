echo SECRET_KEY=$SECRET_KEY >> .env
echo DEBUG=0 >> .env

echo SQL_ENGINE=django.db.backends.postgresql >> .env
echo DATABASE=$DATABASE >> .env
echo SQL_USER=$SQL_USER >> .env
echo SQL_PASSWORD=$SQL_PASSWORD >> .env
echo SQL_HOST=$SQL_HOST >> .env
echo SQL_PORT=$SQL_PORT >> .env

echo WEB_IMAGE=$IMAGE:web  >> .env
echo NGINX_IMAGE=$IMAGE:nginx-proxy  >> .env

# echo CI_REGISTRY_USER=$CI_REGISTRY_USER   >> .env
# echo CI_JOB_TOKEN=$CI_JOB_TOKEN  >> .env
# echo CI_REGISTRY=$CI_REGISTRY  >> .env
echo IMAGE=lemanouthe/compliance-check >> .env

echo VIRTUAL_HOST=$VIRTUAL_HOST  >> .env
echo VIRTUAL_PORT=$VIRTUAL_PORT  >> .env
echo LETSENCRYPT_HOST=$VIRTUAL_HOST  >> .env

# .env.staging.db
echo POSTGRES_USER=$SQL_USER  >> .env
echo POSTGRES_PASSWORD=$SQL_PASSWORD  >> .env
echo POSTGRES_DB=$DATABASE  >> .env
echo POSTGRES_HOST_AUTH_METHOD=trust  >> .env


# .env.staging.proxy-companion
echo DEFAULT_EMAIL=mamoutoudoumbia89@gmail.com  >> .env.staging.proxy-companion
echo ACME_CA_URI=https://acme-staging-v02.api.letsencrypt.org/directory  >> .env.staging.proxy-companion
echo NGINX_PROXY_CONTAINER=nginx-proxy  >> .env.staging.proxy-companion
