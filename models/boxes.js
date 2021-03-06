var Sequelize = require("sequelize");

module.exports = function (sequelize, DataTypes) {
  var boxes = sequelize.define("boxes", {
    boxType: {
      type: DataTypes.TEXT,
      allowNull: false,
      defaultValue: "none"
    },
    onHand: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: "none"
    },
    createdAt: {
      field: "createdAt",
      type: Sequelize.DATE
    }
  },
    {
      freezeTableName: true
    }
  );
  return boxes;
};