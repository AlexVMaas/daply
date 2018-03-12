module.exports = function(sequelize, DataTypes) {
  var Stage = sequelize.define("Stage", {
    stage: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false,
      validate: {
        len: [1]
      }
    }
  });


  Stage.associate = function(models) {
    Stage.belongsTo(models.Domain, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  Stage.associate = function(models) {
    // in a many-to-many relationship, where an author can belong to many posts and vice versa, we will actually need a third table to store all of the possibilities. the "through" property will create that third table for us.
    Stage.belongsToMany(models.Child, {
      through: "childStage"
    });
  };

  Stage.associate = function(models) {
    // in a many-to-many relationship, where an author can belong to many posts and vice versa, we will actually need a third table to store all of the possibilities. the "through" property will create that third table for us.
    Stage.belongsToMany(models.Activity, {
      through: "activityStage"
    });
  };

  return Stage;
};
