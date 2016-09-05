require '../lib/roman_numerals'

describe "Roman Numerals" do

    before(:each) do
        @roman = RomanNumeral.new
    end

    context "convert base symbols (I, V, X)" do
        it "should convert number 1 to numeral I" do
            @roman.convert(1).should == "I"
        end
    end

    context "convert number additions" do

        it "should convert number 2 to numeral II" do
            @roman.convert(2).should == "II"
        end

        it "should convert number 3 to numeral III" do
            @roman.convert(3).should == "III"
        end

    end

    context "convert subtractions" do
        it "should convert number 4 to numeral IV" do
            @roman.convert(4).should == "IV"
        end
    end

end
