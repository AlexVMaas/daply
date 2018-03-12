module.exports = function(sequelize, DataTypes) {
  var Flag = sequelize.define("Flag", {
  });

  Flag.associate = function(models) {
    Flag.belongsTo(models.Parent, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  Flag.associate = function(models) {
    Flag.belongsTo(models.Comment, {
      foreignKey: {
        allowNull: false
      }
    });
  };


  return Flag;
};
