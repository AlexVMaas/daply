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


  app.get("/api/children", function(req, res) {
    var query = {};
    if (req.query.parent_id) {
      query.ParentId = req.query.parent_id;
    }
    db.Child.findAll({
      where: query,
      include: [db.Parent]
    }).then(function(dbChild) {
      res.json(dbChild);
    });
  });

  app.get("/api/children/:id", function(req, res) {
    db.Child.findOne({
      where: {
        id: req.params.id
      },
      include: [db.savedPlan]
    }).then(function(dbChild) {
      res.json(dbChild);
    });
  });


  app.post("/api/children", function(req, res) {
    db.Child.create(req.body).then(function(dbChild) {
      res.json(dbChild);
    });
  });


  app.delete("/api/children/:id", function(req, res) {
    db.Child.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(dbChild) {
      res.json(dbChild);
    });
  });

  // PUT route for updating posts
  app.put("/api/children", function(req, res) {
    db.Child.update(
      req.body,
      {
        where: {
          id: req.body.id
        }
      }).then(function(dbChild) {
      res.json(dbChild);
    });
  });
};
