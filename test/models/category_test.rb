require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  def test_creating #requirement
    @category = Category.new #create new category

    assert_equal @category.save, true # when asserting category.save expect true result -- can use shorthand assert @category.save (truthy value)
  end

  # test for valications
  # test for computations
  # test for children associations

  def test_taks_association
    @category = Category.create(name: "Personal") # create nnew category

    assert_equal @category.tasks.length, 0 # asserts that fisrt and 2nd value are equal like ==
  end
end
