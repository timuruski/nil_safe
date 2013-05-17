require 'nil_safe/nil_object'

module NilSafe
  def self.extended(base)
    base.const_set('NIL', NilObject.new(base))
  end
end
