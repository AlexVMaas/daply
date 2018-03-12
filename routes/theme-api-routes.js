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

  // GET route for getting all of the themes
  app.get("/api/themes", function(req, res) {
    db.Theme.findAll({
      include: [db.Activity]
    }).then(function(dbTheme) {
      res.json(dbTheme);
    });
  });

  // Get rotue for retrieving a single Theme
  app.get("/api/themes/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Theme.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Author]
    }).then(function(dbTheme) {
      res.json(dbTheme);
    });
  });

  // Theme route for saving a new Theme
  app.post("/api/themes", function(req, res) {
    db.Theme.create(req.body).then(function(dbTheme) {
      res.json(dbTheme);
    });
  });
};
