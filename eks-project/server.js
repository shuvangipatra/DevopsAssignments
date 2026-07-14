const express = require('express');
const path = require('path');
const app = express();
const port = 8080;

// Serve the static HTML file
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

// Optional API endpoint if you want to handle goals server-side
app.get('/goal', (req, res) => {
  const goal = req.query.goal || "Learn Docker!";
  res.send(`Hello from Shuvangi’s Summer Docker Course Project! Your goal: ${goal}`);
});

app.listen(port, () => {
  console.log(`Server running at http://0.0.0.0:${port}`);
});
