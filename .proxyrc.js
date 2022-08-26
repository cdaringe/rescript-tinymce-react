// const { createProxyMiddleware } = require("http-proxy-middleware");
const serveStatic = require("serve-static");

module.exports = function (app) {
  const serve = serveStatic("./node_modules", {
    index: ["index.html", "index.htm"],
  });
  app.use((req, res, next) => {
    if (req.url.match(/\/tinymce/i)) {
      console.log(`static @ ${req.url}`);
      return serve(req, res, next);
    } else {
      return next();
    }
  });
};
