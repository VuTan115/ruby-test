module Utils
  def generate_random_name(data_set)
    charset = data_set
    (0...1).map{ charset.to_a[rand(charset.size)] }.join
  end
end