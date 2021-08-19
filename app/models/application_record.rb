class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # def after_sign_in_path_for(resource)
  #   dashboard_index_path
  # end
end
