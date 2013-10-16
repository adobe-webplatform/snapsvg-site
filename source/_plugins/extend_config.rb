module Jekyll

  class ExtendConfigGen < Generator
    safe true
    priority :highest

    def generate(site)
      time = Time.new
      site.config['build_time'] = time.strftime("%Y%m%d%H%M")
    end
  end

end