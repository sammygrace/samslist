class Slug
  def initialize(object)
    @object = object
  end

  def generate
    "#{candidate}#{suffix}"
  end

  private
  def candidate
    @object.slug_field.to_s.parameterize
  end
  
  def suffix
    duplicate?? "-#{Time.now.to_s.parameterize}" : nil
  end

  def duplicate?
    @object.class.find_by(slug: candidate).present?
  end
end
