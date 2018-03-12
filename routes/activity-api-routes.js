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

  // GET route for getting all of the Activitys
  app.get("/api/activity", function(req, res) {
    var query = {};
    if (req.query.theme_id) {
      query.ThemeId = req.query.theme_id;
    }
    // Here we add an "include" property to our options in our findAll query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Activity.findAll({
      where: query,
      include: [db.Theme],
      include: [db.Stage]
    }).then(function(dbActivity) {
      res.json(dbActivity);
    });
  });

  // Get rotue for retrieving a single Activity
  app.get("/api/activity/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Activity.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Theme],
      include: [db.Stage]
    }).then(function(dbActivity) {
      res.json(dbActivity);
    });
  });

  // Activity route for saving a new Activity
  app.post("/api/activity", function(req, res) {
    db.Activity.create(req.body).then(function(dbActivity) {
      res.json(dbActivity);
    });
  });

};