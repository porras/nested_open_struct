Gem::Specification.new do |s|
  s.name        = "nested_open_struct"
  s.version     = '0.0.1'
  s.authors     = ["Sergio Gil"]
  s.email       = ["sgilperez@gmail.com"]
  s.homepage    = "http://github.com/porras/nested_open_struct"
  s.summary     = "Thin wrapper around OpenStruct to make structs 'nested'"
  s.description = "Thin wrapper around OpenStruct to make structs 'nested'"
 
  s.files        = Dir.glob("lib/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end