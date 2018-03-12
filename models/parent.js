module.exports = function(sequelize, DataTypes) {
  var Parent = sequelize.define("Parent", {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    bio: {
      type: DataTypes.TEXT,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    isBanned: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    }
  });

  Parent.associate = function(models) {
    Parent.hasMany(models.Child, {
      onDelete: "cascade"
    });
  };

  Parent.associate = function(models) {
  Parent.hasMany(models.Comment, {
    onDelete: "cascade",
  });
};

  Parent.associate = function(models) {
  Parent.hasMany(models.Flag, {
    onDelete: "cascade",
  });
};

  return Parent;
};

