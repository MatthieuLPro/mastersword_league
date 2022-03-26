
module Constants
  config = YAML.load_file("#{Rails.root}/config/constants.yml")[Rails.env]
end
