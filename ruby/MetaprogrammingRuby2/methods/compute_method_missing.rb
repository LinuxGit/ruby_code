class Compute < BasicObject
  def initialize(compute_id, data_source)
    @id = compute_id
    @data_source = data_source
  end

  def method_messing(name)
    super if !@data_source.respond_to?("get_#{name}_info")
    info   = @data_source.send("get_#{name}_info", @id)
    price  = @data_source.send("get_#{name}_info", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price > 100
    result
  end
end
