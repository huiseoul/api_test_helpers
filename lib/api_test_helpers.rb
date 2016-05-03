# Test helpers for RAILS API
module ApiTestHelpers
  def json_request(verb, path: '', params: {}, headers: {}, xhr: true)
    send verb,
         path,
         params: params.to_json,
         headers: default_json_request_headers.merge(headers),
         xhr: xhr
  end

  private

  def default_json_request_headers
    { 'Content-Type' => 'application/vnd.api+json' }
  end
end
