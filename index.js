const express = require('express');
const app = express();
const port = 3000; // safer than 80 on Windows

app.get('/', (req, res) => {
  res.send('Hello Shuvangi! Your Node.js app is running on AWS EKS 🚀');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
