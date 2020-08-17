# Introdução à Biblioteca de Clientes do Microsoft Graph para Ruby

Essa biblioteca de clientes é uma candidato a versão e ainda está no status de versão prévia. Assim, essa biblioteca **não está pronta para a produção**. Prossiga por sua conta e risco e continue a fornecer [comentários](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new) conforme iteramos a fim de fornecer uma biblioteca com suporte para produção.

## Instalação
Execute ```gem install microsoft_graph``` ou inclua ```gem microsoft_graph``` ao gemfile.
## Introdução

### Registre seu aplicativo

Registre seu aplicativo para usar a API do Microsoft Graph usando
um dos seguintes portais de autenticação com suporte:

* [Portal de Registro de Aplicativos da Microsoft](https://apps.dev.microsoft.com) (**Recomendado**):
registre um novo aplicativo que faça a autenticação usando o ponto de extremidade de autenticação v2.0.
Esse ponto de extremidade autentica as contas pessoais (Microsoft) e corporativas ou de estudantes (Azure Active Directory).
* [Microsoft Azure Active Directory](https://manage.windowsazure.com):
registre um novo aplicativo no Active Directory do locatário para oferecer suporte a usuários corporativos ou de estudantes para os locatários.

### Autentique o serviço do Microsoft Graph

Atualmente a Biblioteca de Clientes do Microsoft Graph para Ruby não inclui nenhuma implementação de autenticação padrão. Em vez disso, o usuário desejará se autenticar com a biblioteca escolhida ou diretamente no ponto de extremidade OAuth.

A biblioteca recomendada para autenticação no AAD (Azure AD) é [ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-ruby).

### Exemplo de uso

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

## Desenvolvimento

### Executar Testes

#### Testes de Unidades

Execute-os da seguinte maneira:

    bundle exec rspec

#### Testes de Integração

Os testes de integração fazem alterações reais em uma conta dinâmica, portanto, execute-os exclusivamente em uma conta de teste dedicada.

Se você tem certeza de que deseja executá-los, é necessário configurar um arquivo `.env` como este:

    MS_GRAPH_USERNAME=usernamehere@xxxxx.onmicrosoft.com
    MS_GRAPH_PASSWORD=xxxxxxxxxxxx
    MS_GRAPH_CLIENT_ID=xxxxx-xxxx-xxx-xxxxxx-xxxxxxx
    MS_GRAPH_CLIENT_SECRET="xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx="
    MS_GRAPH_TENANT=xxxxx.onmicrosoft.com

Depois que tiver todas as credenciais corretas, você pode executar os testes de integração da seguinte forma:

    bundle exec rspec integration_spec

## Documentação e recursos

* [API do Microsoft Graph](https://graph.microsoft.io)

## Problemas

Confira [problemas](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues) para exibir ou registrar problemas.

## Licença

Copyright (c) Microsoft Corporation. Todos os direitos reservados. Licenciada sob a [Licença](LICENSE) do MIT.

Este projeto adotou o [Código de Conduta de Código Aberto da Microsoft](https://opensource.microsoft.com/codeofconduct/).  Para saber mais, confira as [Perguntas frequentes sobre o Código de Conduta](https://opensource.microsoft.com/codeofconduct/faq/) ou entre em contato pelo [opencode@microsoft.com](mailto:opencode@microsoft.com) se tiver outras dúvidas ou comentários.
