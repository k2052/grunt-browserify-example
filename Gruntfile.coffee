module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"

    browserify: 
      build: 
        files: 
          'dist/build.js': ['lib/*']
        options: 
          # external: [require.resolve('jquery')]
        list: true

    coffee:
      node: 
        src: ['**/*.coffee']
        cwd: 'src'
        dest: 'lib/'
        expand: true
        ext: '.js'
        options:
          bare: true

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-mocha-test'
  grunt.loadNpmTasks 'grunt-browserify'
  grunt.loadNpmTasks 'grunt-coffeeify'
  grunt.loadNpmTasks 'grunt-contrib-stylus'

  grunt.registerTask 'browser', ['coffee:node', 'browserify:build']
  grunt.registerTask 'default', ['browser']
