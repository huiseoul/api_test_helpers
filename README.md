## 설치

먼저 젬을 설치합니다.

```
# Gemfile
group :test
  gem 'api_test_helpers', github: 'huiseoul/api_test_helpers'
end
```

그리고 `test_helper`에 설치한 모듈을 추가합니다.

```
# test/test_helper.rb
require 'api_test_helpers'
```

## 사용

### json_request

```
json_request :post, path: '/products'
```

기타 `params (hash)`, `headers (hash)`, `xhr (boolean)`을 파라메터로 줄 수 있습니다.
