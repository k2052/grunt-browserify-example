jquery = require('jquery')(window)
View   = require('space-pen').View
require('underscore-plus')

class Test extends View
  @content: ->
    @div =>
      @h1 "Spacecraft"
      @ol =>
        @li "Apollo"
        @li "Soyuz"
        @li "Space Shuttle"

$(document).ready ->
	view = new Test
	$('body').append(view)

module.exports = Test
window?.Test   = Test
