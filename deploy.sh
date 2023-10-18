# #!/bin/sh

# ssh -o StrictHostKeyChecking=no doumbia@$DEPLOY_PUBLIC_IP_ADDRESS << 'ENDSSH'
#   cd /home/doumbia/app
#   export $(cat .env | xargs)
#   docker login -u $CI_REGISTRY_USER -p $CI_JOB_TOKEN $CI_REGISTRY
#   docker pull $IMAGE:web
#   docker pull $IMAGE:nginx-proxy
#   docker-compose -f docker-compose.staging.yml up -d
#   docker-compose -f docker-compose.staging.yml exec web python manage.py migrate --noinput
#   docker-compose -f docker-compose.staging.yml exec web python manage.py collectstatic --no-input --clear
# ENDSSH
