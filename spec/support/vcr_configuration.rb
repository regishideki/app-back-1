require 'vcr'

VCR.configure do |config|
  config.hook_into :typhoeus
  config.cassette_library_dir = 'spec/support/fixtures/vcr_cassettes'

  config.register_request_matcher :debug do |new_request, old_request|
    new_request == old_request
  end
end
