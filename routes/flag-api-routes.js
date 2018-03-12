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

  // GET route for getting all of the flags
  app.get("/api/flags", function(req, res) {
    var query = {};
    if (req.query.comment_id) {
      query.CommentId = req.query.comment_id;
    }
    // Here we add an "include" property to our options in our findAll query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Flag.findAll({
      where: query,
      include: [db.Comment]
    }).then(function(dbFlag) {
      res.json(dbFlag);
    });
  });

  // Get rotue for retrieving a single post
  app.get("/api/flags/:id", function(req, res) {
    // Here we add an "include" property to our options in our findOne query
    // We set the value to an array of the models we want to include in a left outer join
    // In this case, just db.Author
    db.Flag.findOne({
      where: {
        id: req.params.id
      },
      include: [db.Comment]
    }).then(function(dbFlag) {
      res.json(dbFlag);
    });
  });

  // POST route for saving a new post
  app.post("/api/flags", function(req, res) {
    db.Flag.create(req.body).then(function(dbFlag) {
      res.json(dbFlag);
    });
  });

};

