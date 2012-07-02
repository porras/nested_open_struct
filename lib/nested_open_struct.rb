require 'ostruct'

class NestedOpenStruct < OpenStruct
  def initialize(data)
    super({}.tap do |h|
      data.each do |k, v|
        h[k] = v.is_a?(Hash) ? self.class.new(v) : v
      end
    end)
  end
end