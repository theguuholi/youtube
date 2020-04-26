- https://cloud.google.com/container-registry/


## Dockerfile

cat > Dockerfile <<EOF
FROM node:6
 
WORKDIR /app
 
ADD . /app
 
EXPOSE 80
 
CMD ["node", "app.js"]
EOF



=====

## APP.js

cat > app.js <<EOF
const http = require('http');
 
const hostname = '0.0.0.0';
const port = 80;
 
const server = http.createServer((req, res) => {
    res.statusCode = 200;
      res.setHeader('Content-Type', 'text/plain');
        res.end('Ola mundo\n');
});
 
server.listen(port, hostname, () => {
    console.log('Server running at http://%s:%s/', hostname, port);
});
 
process.on('SIGINT', function() {
    console.log('Caught interrupt signal and will exit');
    process.exit();
});
EOF











