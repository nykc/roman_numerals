class RomanNumeral

    def convert(num)
        result = ""
        while num >= 1
            result += "I"
            num -= 1
        end

        result
    end
end
