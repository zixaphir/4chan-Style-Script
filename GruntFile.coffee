module.exports = (grunt) ->

# From 4chan X: https://github.com/MayhemYDG/4chan-x/blob/v3/LICENSE

# I have plans for anything currently commented out and was too lazy to implement them

#  importHTML = (filename) ->
#    "\"\"\"#{grunt.file.read("src/General/html/#{filename}.html").replace(/^\s+|\s+$</gm, '').replace(/\n/g, '')}\"\"\""

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    concat:
      options: process: Object.create(null, data:
        get: ->
          pkg = grunt.config 'pkg'
#          pkg.importHTML = importHTML
          pkg
        enumerable: true
      )
      coffee:
        src: [
          '4chanSS.coffee'
        ]
        dest: 'tmp/script.coffee'

      script:
        files:
          '<%= pkg.name %>.meta.js': 'meta/metadata.js'
          '<%= pkg.name %>.user.js': [
            'meta/metadata.js'
            'tmp/script.js'
          ]

    coffee:
      script:
        src:  'tmp/script.coffee'
        dest: 'tmp/script.js'

    bump:
      options:
        updateConfigs: [
          'pkg'
        ]
        commit:    false
        createTag: false
        push:      false

#    shell:
#      options:
#        stdout: true
#        stderr: true
#        failOnError: true
#      checkout:
#        command: 'git checkout <%= pkg.meta.mainBranch %>'
#      commit:
#        command: [
#          'git commit -am "Release <%= pkg.meta.name %> v<%= pkg.version %>."'
#          'git tag -a <%= pkg.version %> -m "<%= pkg.meta.name %> v<%= pkg.version %>."'
#          'git tag -af stable -m "<%= pkg.meta.name %> v<%= pkg.version %>."'
#        ].join " && "
#      push:
#        command: 'git push origin --tags -f && git push origin --all'
#
#    watch:
#      options:
#        interrupt: true
#      all:
#        files: [
#          'Gruntfile.coffee'
#          'package.json'
#          'src/**/*'
#        ]
#        tasks: 'build'

    clean:
      tmp: 'tmp'

  require('load-grunt-tasks') grunt

  grunt.registerTask 'default', [
    'build'
  ]

  grunt.registerTask 'build', [
    'concat:coffee'
    'coffee:script'
    'concat:script'
    'clean:tmp'
  ]

#  grunt.registerTask 'release', [
#    'build'
#    'compress:crx'
#    'shell:commit'
#    'shell:push'
#  ]
#  grunt.registerTask 'patch', [
#    'bump'
#    'updcl:3'
#  ]

#  grunt.registerTask 'minor', [
#    'bump:minor'
#    'updcl:2'
#  ]

#  grunt.registerTask 'major', [
#    'bump:major'
#    'updcl:1'
#  ]

#  grunt.registerTask 'updcl', 'Update the changelog', (headerLevel) ->
#    headerPrefix = new Array(+headerLevel + 1).join '#'
#    {version} = grunt.config 'pkg'
#    today     = grunt.template.today 'yyyy-mm-dd'
#    changelog = grunt.file.read 'CHANGELOG.md'

#    grunt.file.write 'CHANGELOG.md', "#{headerPrefix} v#{version} \n*#{today}*\n\n#{changelog}"
#    grunt.log.ok "Changelog updated for v#{version}."
#    grunt.log.ok "Changelog updated for v#{version}."