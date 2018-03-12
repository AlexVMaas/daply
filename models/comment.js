module.exports = function(sequelize, DataTypes) {
  var Comment = sequelize.define("Comment", {
    comment: {
      type: DataTypes.TEXT,
      allowNull: false,
      validate: {
        len: [1]
      }
    }
  });

  Comment.associate = function(models) {
    Comment.belongsTo(models.Activity, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  Comment.associate = function(models) {
    Comment.hasOne(models.Flag, {
    });
  };

  Comment.associate = function(models) {
    Comment.belongsTo(models.Parent, {
      foreignKey: {
        allowNull: false
      }
    });
  };


  return Comment;
};
