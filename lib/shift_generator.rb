class ShiftGenerator

  def initialize(key, date)
    @shift_keys = ('A'..'D').to_a
    @key = key.split('')
    @date = date
  end

  def key_values
    value = {}
    @shift_keys.each do |key|
      value[key.to_sym]  = (@key[0] + @key[1]).to_i
      @key.shift
    end
    value
  end

  def date_values
    value = {}
    num = (@date.to_i ** 2).to_s.split('')
    @shift_keys.reverse.each do |key|
      value[key.to_sym] = (num[-1]).to_i
      num.pop
    end
    value
  end

  def shift_values(key, date)
    key.merge!(date) do |hash_key, key_value, date_value|
      (key_value + date_value)
    end
  end

  def self.generate(key, date)
    new_key = new(key, date)
    new_key.shift_values(new_key.key_values, new_key.date_values)
  end

end
