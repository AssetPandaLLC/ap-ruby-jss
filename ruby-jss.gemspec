proj_name = 'ruby-jss'
lib_dir = 'jss'

require "./lib/#{lib_dir}/version"

Gem::Specification.new do |s|
  # General
  s.description = <<-EOD
    The ruby-jss gem provides native ruby access to the REST APIs of Jamf Pro,
    an enterprise/education tool for managing Apple devices, from jamf.com.
    The JSS module provides access to the 'Classic' API, while the Jamf module
    provides access to the more modern 'Jamf Pro' API. Jamf Pro objects are
    implemented as classes and, within each module, can interact with each other.
    The underlying data transfer using JSON or XML is handled automatically
    under the hood to allow simpler, intuitive automation of Jamf-related Tasks.
  EOD
  s.name        = proj_name
  s.version     = JSS::VERSION
  s.license     = 'Nonstandard'
  s.date        = Time.now.utc.strftime('%Y-%m-%d')
  s.summary     = 'A Ruby interface to the Jamf Pro REST APIs'
  s.authors     = ['', '']
  s.homepage    = ''

  s.files = Dir['lib/**/*.rb']
  s.files << '.yardopts'
  s.files += Dir['data/**/*']
  s.files += Dir['test/**/*']

  s.executables << 'cgrouper'
  s.executables << 'netseg-update'
  s.executables << 'jamfHelperBackgrounder'

  # Dependencies
  s.required_ruby_version = '>= 2.3.0'

  # https://github.com/ckruse/CFPropertyList  MIT License (no dependencies)
  s.add_runtime_dependency 'CFPropertyList', '~> 3.0'
  # https://github.com/tmtm/ruby-mysql Ruby License (no dependencies)
  s.add_runtime_dependency 'ruby-mysql', '~> 2.9', '>= 2.9.12'
  # https://github.com/lostisland/faraday: MIT License
  s.add_runtime_dependency 'faraday', '>= 1.0.0', '<= 1.0.1'
  # https://github.com/lostisland/faraday_middleware & dependencies: MIT License
  s.add_runtime_dependency 'faraday_middleware', '>= 1.0.0', '<= 1.0.1'
  # https://github.com/stitchfix/immutable-struct MIT License (no dependencies)
  s.add_runtime_dependency 'immutable-struct', '~> 2.3', '>= 2.3.0'
  # https://github.com/aetherknight/recursive-open-struct MIT License (no dependencies)
  s.add_runtime_dependency 'recursive-open-struct', '~> 1.1', '>= 1.1.0'

  # Rdoc
  s.extra_rdoc_files = ['README.md', 'LICENSE.txt', 'CHANGES.md', 'THANKS.md']
  s.rdoc_options << '--title' << 'JSS' << '--line-numbers' << '--main' << 'README.md'
end
