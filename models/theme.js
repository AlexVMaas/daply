module.exports = function(sequelize, DataTypes) {
  var Theme = sequelize.define("Theme", {
    theme: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    description: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    }   
  });

  Theme.associate = function(models) {
  	Theme.hasMany(models.Plan, {
  	foreignKey: {
        allowNull: false
      }
  	})
  };

  Theme.associate = function(models) {
    Theme.belongsToMany(models.Activity, {
      through: "activityTheme"
    });
  };

  return Theme
};