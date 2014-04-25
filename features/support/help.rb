
class Selenium::WebDriver::Chrome::Bridge
  def extract_service_args(opts)
    args = ['--verbose']

    if opts.has_key?(:service_log_path)
      args << "--log-path=#{opts.delete(:service_log_path)}"
    end
    args
  end
end
