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

  // GET route for getting all of the domains
  app.get("/api/domains", function(req, res) {
    var query = {};
    if (req.query.stage_id) {
      query.StageId = req.query.stage_id;
    }
    // Here we add an "include" property to our options in our findAll query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Domain.findAll({
      where: query,
      include: [db.Stage]
    }).then(function(dbDomain) {
      res.json(dbDomain);
    });
  });

  // Get rotue for retrieving a single Domain
  app.get("/api/domains/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Domain.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Stage]
    }).then(function(dbDomain) {
      res.json(dbDomain);
    });
  });

}
