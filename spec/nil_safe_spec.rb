require 'nil_safe'

describe NilSafe do
  before do
    @test_class = Class.new do
      extend NilSafe
    end
  end

  it "sets constants" do
    @test_class.constants.should include(:NIL)
  end

  it "can be extended into a class" do
    @test_class::NIL.should be_a(NilObject)
  end

  it "returns the same object" do
    id_a = @test_class::NIL.object_id
    id_b = @test_class::NIL.object_id

    id_a.should == id_b
  end

  it "does not return nil" do
    @test_class::NIL.should_not be_nil
  end
end
