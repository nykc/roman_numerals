require '../lib/roman_numerals'

describe "Roman Numerals" do

    before(:each) do
        @roman = RomanNumeral.new
    end

    context "convert base symbols (I, V, X, L, C, D, M)" do
        it "should convert number 1 to numeral I" do
            @roman.convert(1).should == "I"
        end
        it "should convert number 5 to numeral V" do
            @roman.convert(5).should == "V"
        end
        it "should convert number 10 to numeral X" do
            @roman.convert(10).should == "X"
        end
        it "should convert number 50 to numeral L" do
            @roman.convert(50).should == "L"
        end
        it "should convert number 100 to numeral C" do
            @roman.convert(100).should == "C"
        end
        it "should convert number 500 to numeral D" do
            @roman.convert(500).should == "D"
        end
        it "should convert number 1000 to numeral M" do
            @roman.convert(1000).should == "M"
        end
    end

    context "convert additions" do

        it "should convert number 2 to numeral II" do
            @roman.convert(2).should == "II"
        end

        it "should convert number 3 to numeral III" do
            @roman.convert(3).should == "III"
        end

        it "should convert number 8 to numeral VIII" do
            @roman.convert(8).should == "VIII"
        end

        it "should convert number 20 to numeral XX" do
            @roman.convert(20).should == "XX"
        end

        it "should convert number 84 to numeral LXXXIV" do
            @roman.convert(84).should == "LXXXIV"
        end
        it "should convert number 1066 to numeral MLXVI" do
            @roman.convert(1066).should == "MLXVI"
        end
        it "should convert number 1989 to numeral MCMLXXXIX" do
            @roman.convert(1989).should == "MCMLXXXIX"
        end
    end

    context "convert subtractions" do
        it "should convert number 4 to numeral IV" do
            @roman.convert(4).should == "IV"
        end

        it "should convert number 9 to numeral IX" do
            @roman.convert(9).should == "IX"
        end

        it "should convert number 40 to numeral XL" do
            @roman.convert(40).should == "XL"
        end

        it "should convert number 90 to numeral XC" do
            @roman.convert(90).should == "XC"
        end

        it "should convert number 400 to numeral CD" do
            @roman.convert(400).should == "CD"
        end

        it "should convert number 900 to numeral CM" do
            @roman.convert(900).should == "CM"
        end
    end

end
