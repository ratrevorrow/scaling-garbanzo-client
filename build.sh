# sudo usermod -a -G docker vagrant
# newgrp docker
npm install
npm install react-scripts
npm run build
ls
echo "PATH IS"
pwd
docker build --rm -f Dockerfile.prod -t dashboard:latest .
docker tag dashboard rtrevorrow/dashboard:latest
docker push rtrevorrow/dashboard:latest