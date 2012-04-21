class Admin::BaseController < ActionController::Base
  inherit_resources
  layout 'admin'

  # Automatically sort collection based on parameters in GET.
  def collection
    attr_name = "@" + self.resources_configuration[:self][:collection_name].to_s
    unless instance_variable_get(attr_name)
      col = end_of_association_chain
      col = col.sorted(params[:sort], default_sort)
      col = col.page(params[:page])
      instance_variable_set(attr_name, col)
    end
    instance_variable_get(attr_name)
  end

  def default_sort
    "id DESC"
  end

end
