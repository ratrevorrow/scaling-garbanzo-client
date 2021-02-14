# sudo usermod -a -G docker vagrant
# newgrp docker
npm install react-scripts
npm install typescript
npm install
npm run build
ls
echo "PATH IS"
pwd
docker build --rm -f Dockerfile.prod -t dashboard:latest .
docker tag dashboard rtrevorrow/dashboard:latest
docker push rtrevorrow/dashboard:latest