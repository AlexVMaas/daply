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

  // GET route for getting all of the posts
  app.get("/api/stages", function(req, res) {
    var query = {};
    if (req.query.domain_id) {
      query.DomainId = req.query.domain_id;
    }
    db.Stage.findAll({
      where: query,
      include: [db.Domain]
    }).then(function(dbStage) {
      res.json(dbStage);
    });
  });

  // Get rotue for retrieving a single post
  app.get("/api/stages/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Stage.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Domain]
    }).then(function(dbStage) {
      res.json(dbStage);
    });
  });
};
