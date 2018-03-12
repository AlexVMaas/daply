// *********************************************************************************
// api-routes.js - this file offers a set of routes for displaying and saving data to the db
// *********************************************************************************

// Dependencies
// =============================================================

// Requiring our models
var db = require("../models");

// Routes
// =============================================================
module.exports = function(app) {


  app.get("/api/parents/:id", function(req, res) {
    db.Parent.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Child]
    }).then(function(dbParent) {
      res.json(dbParent);
    });
  });

  // POST route for saving a new post
  app.post("/api/parents", function(req, res) {
    db.Parent.create(req.body).then(function(dbParent) {
      res.json(dbParent);
    });
  });

  // DELETE route for deleting posts
  app.delete("/api/parents/:id", function(req, res) {
    db.Parent.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(dbParent) {
      res.json(dbParent);
    });
  });

  // PUT route for updating posts
  app.put("/api/parents", function(req, res) {
    db.Parent.update(
      req.body,
      {
        where: {
          id: req.body.id
        }
      }).then(function(dbParent) {
      res.json(dbParent);
    });
  });
};
