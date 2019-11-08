require 'minitest/autorun'
require 'minitest/reporters'

MiniTest::Reporters.use!

class NoExperienceError < Exception
end
  
  class Employee
    attr_reader :experience
      
    def initialize
      @experience = false
    end
    
    def hire
      if @experience == false
        raise NoExperienceError
      end
    end
  end

  class List
    @@array = [1, 2, 3]
    

    def process
      @@array.each do |item|
        item += 2
      end
      self
    end
  end

class Tests < MiniTest::Test
    
  def setup
    @value_1 = 3
    @value_2 = 'xyz'
    @value_3 = nil
    @value_4 = []
    @value_5 = [@value_2]
    @employee = Employee.new
    @value_6 = Numeric.new
    @value_7 = 1
    @value_8 = List.new
    @value_9 = []
  end
  
  def test_works
    assert_equal true, @value_1.odd?
    assert_equal 'xyz', @value_2
    assert_nil @value_3
    assert_empty @value_4
    assert_includes @value_5, 'xyz'
    assert_raises(NoExperienceError) { @employee.hire }
    assert_instance_of Numeric, @value_6
    assert_kind_of Numeric, @value_7
    assert_same @value_8, @value_8.process
    refute_includes @value_9, 'xyz'
  end
end