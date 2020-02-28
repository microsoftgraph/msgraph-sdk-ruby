# Ruby 用 Microsoft Graph クライアント ライブラリを使用する

このクライアント ライブラリはリリース候補であり、まだプレビューの状態です。したがって、このライブラリは**実稼働準備完了になっていません**。ご自身の責任においてご使用ください。実稼働版のライブラリに向けた開発を Microsoft で進めるにあたり、引き続き[フィードバック](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new)をお寄せください。

## インストール
```gem install microsoft_graph``` を実行するか、gemfile に ```gem microsoft_graph``` を含めます。
## 作業を開始する

### アプリケーションを登録する

Microsoft Graph API を使用するには、
サポートされている次の認証ポータルのいずれかを使用してアプリケーションを登録します。

* [Microsoft アプリケーション登録ポータル](https://apps.dev.microsoft.com) (**推奨**):
v2.0 認証エンドポイントを使用して認証が行われる新しいアプリケーションを登録します。このエンドポイントでは、個人用 (Microsoft) アカウントおよび職場または学校 (Azure Active Directory) のアカウントの両方が認証されます。
* [Microsoft Azure Active Directory](https://manage.windowsazure.com):
テナントまたは複数のテナントで職場または学校のユーザーをサポートするために、
新しいアプリケーションをテナントの Active Directory に登録します。

### Microsoft Graph サービスの認証

Ruby 用 Microsoft Graph クライアント ライブラリには、既定の認証の実装は含まれていません。代わりに、ユーザーは任意のライブラリで認証を行うか、または OAuth エンドポイントに対して直接認証する必要があります。

AAD に対する認証での推奨ライブラリは、[ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-ruby)です。

### 使用例

```ruby
require 'adal'
require 'microsoft_graph'

# authenticate using ADAL
username      = 'admin@tenant.onmicrosoft.com'
password      = 'xxxxxxxxxxxx'
client_id     = 'xxxxx-xxxx-xxx-xxxxxx-xxxxxxx'
client_secret = 'xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx='
tenant        = 'tenant.onmicrosoft.com'
user_cred     = ADAL::UserCredential.new(username, password)
client_cred   = ADAL::ClientCredential.new(client_id, client_secret)
context       = ADAL::AuthenticationContext.new(ADAL::Authority::WORLD_WIDE_AUTHORITY, tenant)
resource      = "https://graph.microsoft.com"
tokens        = context.acquire_token_for_user(resource, client_cred, user_cred)

# add the access token to the request header
callback = Proc.new { |r| r.headers["Authorization"] = "Bearer #{tokens.access_token}" }

graph = MicrosoftGraph.new(base_url: "https://graph.microsoft.com/v1.0",
                           cached_metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml"),
                           api_version: '1.6', # Optional
                           &callback
)

me = graph.me # get the current user
puts "Hello, I am #{me.display_name}."

me.direct_reports.each do |person|
  puts "How's it going, #{person.display_name}?"
end
```

## 開発

### テストの実行

#### 単体テスト

次のように実行します。

    bundle exec rspec

#### 統合テスト

統合テストでは、稼働中アカウントに対して変更が実際に加えられます。そのため、統合テストはテスト専用アカウント以外に対しては実行しないでください。

これを理解した上で統合テストをなお実行する場合は、次のような、`.env` ファイルをセットアップする必要があります。

    MS_GRAPH_USERNAME=usernamehere@xxxxx.onmicrosoft.com
    MS_GRAPH_PASSWORD=xxxxxxxxxxxx
    MS_GRAPH_CLIENT_ID=xxxxx-xxxx-xxx-xxxxxx-xxxxxxx
    MS_GRAPH_CLIENT_SECRET="xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx="
    MS_GRAPH_TENANT=xxxxx.onmicrosoft.com

正しい資格情報をすべて取得したら、次のような統合テストを実行できます。

    bundle exec rspec integration_spec

## ドキュメントとリソース

* [Microsoft Graph API](https://graph.microsoft.io)

## 問題

問題を確認または報告するには、「[Issues (問題)](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues)」 を参照してください。

## ライセンス

Copyright (c) Microsoft Corporation.All Rights Reserved.Licensed under the MIT [license](LICENSE).

このプロジェクトでは、[Microsoft Open Source Code of Conduct (Microsoft オープン ソース倫理規定)](https://opensource.microsoft.com/codeofconduct/) が採用されています。詳細については、「[Code of Conduct の FAQ (倫理規定の FAQ)](https://opensource.microsoft.com/codeofconduct/faq/)」を参照してください。また、その他の質問やコメントがあれば、[opencode@microsoft.com](mailto:opencode@microsoft.com) までお問い合わせください。
