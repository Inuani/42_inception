// entrypoint for app

// web framework module
const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

// public dir
app.use(express.static("public"));

// start app
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});

