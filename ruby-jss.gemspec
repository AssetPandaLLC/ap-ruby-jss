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

  s.add_runtime_dependency 'ruby-mysql', '~> 2.9', '>= 2.9.12'
  s.add_runtime_dependency 'immutable-struct', '~> 2.3', '>= 2.3.0'
  s.add_runtime_dependency 'recursive-open-struct', '~> 1.1', '>= 1.1.0'
  s.add_runtime_dependency 'net-ldap', '~> 0.16'
  s.add_runtime_dependency 'plist', '~> 3.1'
  s.add_runtime_dependency 'rest-client', '>= 1.8.0', '< 2.1'

  # Rdoc
  s.extra_rdoc_files = ['CHANGES.md']
end
