module.exports = function(sequelize, DataTypes) {
  var Child = sequelize.define("Child", {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    dob: DataTypes.DATEONLY,
  });


  Child.associate = function(models) {
    Child.belongsTo(models.Parent, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  Child.associate = function(models) {
    Child.hasMany(models.Plan, {
      onDelete: "cascade"
    });
  };


  Child.associate = function(models) {
    // in a many-to-many relationship, where an author can belong to many posts and vice versa, we will actually need a third table to store all of the possibilities. the "through" property will create that third table for us.
    Child.belongsToMany(models.Stage, {
      through: "childStage"
    });
  };

  return Child;
};
