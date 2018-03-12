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

  // GET route for getting all of the plans
  app.get("/api/plans", function(req, res) {
    var query = {};
    if (req.query.child_id) {
      query.ChildId = req.query.child_id;
    }
    // Here we add an "include" property to our options in our findAll query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Plan.findAll({
      where: query,
      include: [db.Theme]
    }).then(function(dbPlan) {
      res.json(dbPlan);
    });
  });

  // Get rotue for retrieving a single Plan
  app.get("/api/plans/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Plan.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Theme]
    }).then(function(dbPlan) {
      res.json(dbPlan);
    });
  });

  // Plan route for saving a new Plan
  app.post("/api/plans", function(req, res) {
    db.Plan.create(req.body).then(function(dbPlan) {
      res.json(dbPlan);
    });
  });

  // DELETE route for deleting plans
  app.delete("/api/plans/:id", function(req, res) {
    db.Plan.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(dbPlan) {
      res.json(dbPlan);
    });
  });

  // PUT route for updating plans
  app.put("/api/plans", function(req, res) {
    db.Plan.update(
      req.body,
      {
        where: {
          id: req.body.id
        }
      }).then(function(dbPlan) {
      res.json(dbPlan);
    });
  });
};
