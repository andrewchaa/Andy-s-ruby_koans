require File.expand_path(File.dirname(__FILE__) + '/edgecase')

class AboutNil < EdgeCase::Koan
  def test_nil_is_an_object
    assert_equal true, nil.is_a?(Object), "Unlike NULL in other language"
  end

  def test_you_dont_get_null_pointer_errors_when_calling_methods_on_nil
    begin
      nil.method_that_does_not_exist
    rescue Exception => ex
      assert_equal NoMethodError, ex.class
      assert_match(/method_that_does_not_exist/, ex.message)
    end

  end

  def test_nil_has_a_few_methods_defined_on_it
    assert_equal true, nil.nil?
    assert_equal "", nil.to_s
    assert_equal "nil", nil.inspect


    # THINK ABOUT IT:
    #
    # Is it better to use
    #    obj.nil?
    # or
    #    obj == nil
    # Why?
  end

end
