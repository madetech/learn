class RomanNumeral
  def convert(iNumber)
    @sNumeral = ''
    @iNumber = iNumber
    return 'There is no Roman Numeral for 0' if @iNumber == 0
    mNumberConversion
    @sNumeral
  end

  private

  def mNumberConversion(number = @iNumber)
    aNumeralConversion.keys.each do |divisor|
      iR, iM = number.divmod(divisor)
      @sNumeral << aNumeralConversion[divisor] * iR
      return mNumberConversion(iM) if iR > 0
      return mNumberConversion(iM) if iR > 0
    end
  end

  def aNumeralConversion
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
  end
end
