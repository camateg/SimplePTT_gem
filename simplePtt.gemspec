Gem::Specification.new do |s|
        s.name = 'simplePtt'
        s.version = '0.0.1'
        s.date = '2017-02-27'
        s.summary = 'SimplePtt'
        s.description = 'Generate RTS and DTR on/off on a serial port.'
        s.authors = ['Matthew Fleeger']
        s.email = 'mfleeger5@gmail.com'
        s.files = ['lib/simplePtt.rb']
        s.add_runtime_dependency 'serialport', '~> 0'
        s.homepage = 'http://rubygems.org/gems/simplePtt'
        s.license = '0BSD'
end
