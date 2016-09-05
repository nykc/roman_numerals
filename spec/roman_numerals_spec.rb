require '../lib/roman_numerals'

describe "Roman Numerals" do

    context "convert numbers 1 to 3" do
        it "should convert number 1 to numeral I" do
            roman = RomanNumeral.new
            roman.convert(1).should == "I"
        end

        it "should convert number 2 to numeral II" do
            roman = RomanNumeral.new
            roman.convert(2).should == "II"
        end

    end

end
