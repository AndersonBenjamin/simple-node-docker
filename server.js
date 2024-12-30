const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, {'Contente-Rype': 'text/plain'});
    res.end('Hello, AWS with docker!\n');
});

const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});