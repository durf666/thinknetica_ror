module Producer
  FORMAT_PRODUCER = /^[0-9a-z][0-9a-z]+$/i
  attr_accessor :name_company

  def valid?
    validate!
  rescue
    false
  end

  protected

  def validate!
    raise "Company name can't be nil" if name_company.nil?
    raise 'Company name has invalid format' if name_company !~ FORMAT_PRODUCER
    true
  end
end
