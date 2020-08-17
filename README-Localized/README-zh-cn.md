# 适用于 Ruby 的 Microsoft Graph 客户端库入门

此客户端库是候选发布版本，仍处于预览状态。所以，此库**不能用于生产**。在我们不断迭代直到获得支持生产的库之前，其使用需自行承担风险，此外，请继续提供[反馈](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new)。

## 安装
运行 ```gem install microsoft_graph``` 或在 gemfile 中添加 ```gem microsoft_graph```。
## 入门

### 注册应用程序

使用下列支持的身份验证门户之一注册应用程序，
以使用 Microsoft Graph API：

* [Microsoft 应用程序注册门户](https://apps.dev.microsoft.com)（**推荐**）：
注册一个使用 v2.0 身份验证终结点进行身份验证的新应用程序。此终结点将对个人 (Microsoft) 和工作或学校 (Azure Active Directory) 帐户进行身份验证。
* [Microsoft Azure Active Directory](https://manage.windowsazure.com)：
在租户的 Active Directory 中注册新应用程序，
以支持你的租户或多个租户的工作或学校用户。

### Microsoft Graph 服务身份验证

适用于 Ruby 的 Microsoft Graph 客户端库不包含任何默认身份验证实现。相反，用户会希望通过其选择的库进行身份验证或直接针对 OAuth 终结点进行身份验证。

推荐用于根据 AAD 进行身份验证的库是 [ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-ruby)。

### 用法示例

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

## 开发

### 运行测试

#### 单元测试

按如下方式运行：

    bundle exec rspec

#### 集成测试

集成测试会在实时帐户中进行真实更改，因此不要针对除专用测试帐户之外的任何其他帐户运行这种测试。

如果确定要运行这种测试，需要设置如下所示的 `.env` 文件：

    MS_GRAPH_USERNAME=usernamehere@xxxxx.onmicrosoft.com
    MS_GRAPH_PASSWORD=xxxxxxxxxxxx
    MS_GRAPH_CLIENT_ID=xxxxx-xxxx-xxx-xxxxxx-xxxxxxx
    MS_GRAPH_CLIENT_SECRET="xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx="
    MS_GRAPH_TENANT=xxxxx.onmicrosoft.com

具备所有的正确凭据后，即可运行集成测试，如下所示：

    bundle exec rspec integration_spec

## 文档和资源

* [Microsoft Graph API](https://graph.microsoft.io)

## 问题

若要查看或记录问题，请参阅[问题](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues)。

## 许可证

版权所有 (c) Microsoft Corporation。保留所有权利。在 MIT [许可证](LICENSE)下获得许可。

此项目已采用 [Microsoft 开放源代码行为准则](https://opensource.microsoft.com/codeofconduct/)。有关详细信息，请参阅[行为准则常见问题解答](https://opensource.microsoft.com/codeofconduct/faq/)。如有其他任何问题或意见，也可联系 [opencode@microsoft.com](mailto:opencode@microsoft.com)。
