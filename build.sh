sudo usermod -a -G docker vagrant
newgrp docker
npm install --force
npm run build
docker build --rm -f Dockerfile.prod -t dashboard:latest .
docker tag dashboard rtrevorrow/dashboard:latest
docker push rtrevorrow/dashboard:latest