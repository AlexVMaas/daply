module.exports = function(sequelize, DataTypes) {
  var Plan = sequelize.define("Plan", {
    date: DataTypes.DATEONLY
  });

  Plan.associate = function(models) {
    Plan.belongsTo(models.Child, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  Plan.associate = function(models) {
    Plan.belongsTo(models.Theme, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  Plan.associate = function(models) {
    // in a many-to-many relationship, where an author can belong to many posts and vice versa, we will actually need a third table to store all of the possibilities. the "through" property will create that third table for us.
    Plan.belongsToMany(models.Activity, {
      through: "activityPlan"
    });
  };

  return Plan;
};
