const http  = require("http");
const server = http.createServer((req, res) => {
  res.setHeader("Content-type", "application/json");
  res.writeHead(200);

  let dataObj = {"id": 123, "name": "Mayank"};
  let data = JSON.stringify(dataObj);

  res.end(data);
});

server.listen(1235, () => {
  console.log("Listening on port 1235");
});
