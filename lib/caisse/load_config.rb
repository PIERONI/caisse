class LoadConfig

  def self.for(gateway)

    defined?(Rails) ? env = Rails.env : env = 'test'

    if env == 'test'
      config_path = File.expand_path("../../../spec/fixtures/caisse_config.yml", __FILE__)
    else
      config_path = File.join(Rails.root, 'config', 'caisse_config.yml')
    end

    begin
      full_config_content = YAML::load_file(config_path)
      @config_file = full_config_content[gateway.to_s][env]
    rescue
      raise "Caisse error ! Invalid or missing file /config/caisse_config.yml"
    end

  end

end
