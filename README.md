## 설치

먼저 private repo에서 젬을 가져오기 위해 내 github 어카운트의 access token이 필요합니다.

```
curl -u 'username' -d '{"scopes":["repo"],"note":"Api Test Helpers"}' https://api.github.com/authorizations
```

가져온 GITHUB_TOKEN이라는 환경 변수로 저장합니다.

그리고 젬을 설치합니다.

```
# Gemfile
group :test
  gem 'api_test_helpers',
      git: "https://#{ENV['GITHUB_TOKEN']}:x-oauth-basic@github.com/" \
           'huiseoul/api_test_helpers.git'
end
```

그리고 `test_helper`에 설치한 모듈을 추가합니다.

```
# test/test_helper.rb
require 'api_test_helpers'

include ApiTestHelpers
```

## 사용

### json_request

```
json_request :post, path: '/products'
```

기타 `params (hash)`, `headers (hash)`, `xhr (boolean)`을 파라메터로 줄 수 있습니다.
