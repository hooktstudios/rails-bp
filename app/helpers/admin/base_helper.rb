module Admin::BaseHelper
  def admin_form_for obj, opts={}, &block
    defaults = { wrapper: :bootstrap }
    simple_form_for obj, defaults.merge(opts), &block
  end
end
