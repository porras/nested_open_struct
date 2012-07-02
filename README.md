# NestedOpenStruct

Thin wrapper around OpenStruct in order to create nested structs. Useful for storing configuration settings e.g. loaded from a YAML file.

Example:

    data = NestedOpenStruct.new(
      :services => {
        :ftp => {
          :host => 'ftp.example.com',
          :login => 'wadus',
          :password => 'secret'
        },
        :web => {
          :url => 'http://example.com/'
        }
      }
    )
    
    data.services.ftp.host
     => "ftp.example.com" 
    data.services.ftp.login
     => "wadus" 
    data.services.web.url
     => "http://example.com/"