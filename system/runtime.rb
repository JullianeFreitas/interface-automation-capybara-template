module Runtime

  attr_reader :timestamp
  attr_reader :settings
  attr_reader :log_file_path

  def self.get_timestamp
    if @timestamp.nil?
      set_timestamp
    end
    @timestamp
  end

  def self.set_timestamp
    @timestamp = Time.now.strftime '%d-%m-%Y-%H%M%S'
  end

  def self.get_settings
    @settings
  end

  def self.set_settings (settings)
    @settings = settings
  end

  def self.get_log_filepath
    if @log_file_path.nil?
      set_log_filepath
    end
    @log_file_path
  end

  def self.set_log_filepath
    @log_file_path = "#{@settings.log_file_path}#{@settings.project_code}/#{get_timestamp}/"

  end

end