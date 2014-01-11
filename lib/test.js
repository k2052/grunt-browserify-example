var Test, View, jquery, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

jquery = require('jquery')(window);

View = require('space-pen').View;

require('underscore-plus');

Test = (function(_super) {
  __extends(Test, _super);

  function Test() {
    _ref = Test.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Test.content = function() {
    var _this = this;
    return this.div(function() {
      _this.h1("Spacecraft");
      return _this.ol(function() {
        _this.li("Apollo");
        _this.li("Soyuz");
        return _this.li("Space Shuttle");
      });
    });
  };

  return Test;

})(View);

$(document).ready(function() {
  var view;
  view = new Test;
  return $('body').append(view);
});

module.exports = Test;

if (typeof window !== "undefined" && window !== null) {
  window.Test = Test;
}
