module.exports = function(sequelize, DataTypes) {
  var Domain = sequelize.define("Domain", {
    domain: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    }
  });

  Domain.associate = function(models) {
    Domain.hasMany(models.Stage, {
	  foreignKey: {
        allowNull: false
      }
    });
  };

  Domain.associate = function(models) {
    Domain.hasMany(models.Activity, {
	  foreignKey: {
        allowNull: false
      }
    });
  };

return Domain
};