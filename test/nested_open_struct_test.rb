require 'test/unit'
require File.join(File.dirname(__FILE__), '..', 'lib', 'nested_open_struct')

class NestedOpenStructTest < Test::Unit::TestCase
  def test_one_level
    data = NestedOpenStruct.new('a' => 'a value', 'b' => 'b value', 'c' => 5)
    
    assert_equal('a value', data.a)
    assert_equal('b value', data.b)
    assert_equal(5, data.c)
  end
  
  def test_one_level_with_symbols
    data = NestedOpenStruct.new(:a => 'a value')
    
    assert_equal('a value', data.a)
  end
  
  def test_two_levels
    data = NestedOpenStruct.new(:a => 'a value', 'b' => {:c => 'c value', :d => 'd value'})
    
    assert_equal('a value', data.a)
    assert_equal('c value', data.b.c)
    assert_equal('d value', data.b.d)
  end
  
  def test_n_levels
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
      },
      :setup => {
        :wadus => 'chaflan'
      }
    )
    
    assert_equal('ftp.example.com', data.services.ftp.host)
    assert_equal('wadus', data.services.ftp.login)
    assert_equal('secret', data.services.ftp.password)
    assert_equal('http://example.com/', data.services.web.url)
    assert_equal('chaflan', data.setup.wadus)
  end
  
end