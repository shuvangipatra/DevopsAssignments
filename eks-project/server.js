const express = require('express');
const path = require('path');
const fs = require('fs');
const app = express();
const port = 8080;

// Serve static CSS
app.use(express.static(path.join(__dirname, 'public')));

// Homepage with styled text
app.get('/', (req, res) => {
  res.send(`
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="/style.css">
      </head>
      <body>
        <h1 class="title">Hello from Shuvangi’s EKS Lab Project!</h1>
      </body>
    </html>
  `);
});

// Health check
app.get('/health', (req, res) => {
  res.json({ status: 'UP', service: 'eks-lab-project' });
});

// Endpoint to serve text file
app.get('/message', (req, res) => {
  const filePath = path.join(__dirname, 'message.txt');
  fs.readFile(filePath, 'utf8', (err, data) => {
    if (err) {
      res.status(500).send('Error reading message file');
    } else {
      res.send(`<pre>${data}</pre>`);
    }
  });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
