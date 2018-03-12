module.exports = function(sequelize, DataTypes) {
  var Activity = sequelize.define("Activity", {
    activity: {
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
    },
    growsEmotion: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    growsIntellect: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    growsPhysical: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    growsSocial: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    resourceLink : {
      type: DataTypes.STRING
    },
    upvotes: DataTypes.INTEGER,
    downvotes: DataTypes.INTEGER
  });


  Activity.associate = function(models) {
  Activity.hasMany(models.Comment, {
    onDelete: "cascade"
  });
};

  Activity.associate = function(models) {
  Activity.belongsTo(models.Domain, {
    foreignKey: {
        allowNull: false
      }
    });
  };


  Activity.associate = function(models) {
    Activity.belongsToMany(models.Stage, {
      through: "activityStage"
    });
  };


  Activity.associate = function(models) {
    Activity.belongsToMany(models.Theme, {
      through: "activityTheme"
    });
  };

  Activity.associate = function(models) {
    Activity.belongsToMany(models.Plan, {
      through: "activityPlan"
    });
  };

  return Activity;
};
