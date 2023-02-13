const jwt = require("jsonwebtoken");
function authenticateToken(req, res, next) {
  const authHeaders = req.headers("authorization");
  const token = authHeaders && authHeaders.split(" ")[1];
  if (token == null) return res.sendStatus(401);
  jwt.verify(token, "Snippet_SecretKey", (err, user) => {
    if (err) return res.sendStatus(403);
    req.user = user;
    next();
  });
}
function generateAccessToken(username) {
  return jwt.sign({ data: username }, "Snippet_SecretKey", {
    expiresIn: "1h",
  });
}

module.exports = {
  authenticateToken,
  generateAccessToken,
};
