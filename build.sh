# sudo usermod -a -G docker vagrant
# newgrp docker
rm -rf node_modules/ || true
rm -f package-lock.json/ || true
npm cache clean --force
# npm install react-scripts
# npm install typescript
npm install # --legacy-peer-deps
npm run build
ls
echo "PATH IS"
pwd
docker build --rm -f Dockerfile.prod -t dashboard:latest .
docker tag dashboard rtrevorrow/dashboard:latest
docker push rtrevorrow/dashboard:latest