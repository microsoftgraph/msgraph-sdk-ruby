# Начало работы с клиентской библиотекой Microsoft Graph для Ruby

Эта клиентская библиотека представляет собой версию-кандидат и пока находится в предварительной версии. Таким образом, эта библиотека **не готова к использованию в рабочей среде**. Действуйте на свой собственный риск и не забывайте оставлять [отзывы](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new) по мере того, как мы будем продвигаться к библиотеке, пригодной для рабочей среды.

## Установка
Выполните команду ```gem install microsoft_graph``` или включите ```gem microsoft_graph``` в gem-файл.
## Начало работы

### Регистрация приложения

Зарегистрируйте приложение для использования API Microsoft Graph
с помощью одного из следующих поддерживаемых порталов проверки подлинности.

* [Портал регистрации приложений Microsoft](https://apps.dev.microsoft.com) (**рекомендуется**).
Зарегистрируйте новое приложение, которое выполняет проверку подлинности с помощью конечной точки проверки подлинности версии 2.0.
Эта конечная точка проверяет подлинность как личных (Майкрософт), так и рабочих или учебных (Azure Active Directory) учетных записей.
* [Microsoft Azure Active Directory](https://manage.windowsazure.com). Зарегистрируйте новое приложение в службе каталогов
Active Directory клиента для поддержки пользователей рабочих или учебных учетных записей для клиента или нескольких клиентов.

### Проверка подлинности для службы Microsoft Graph

В настоящее время в клиентской библиотеке Microsoft Graph для Ruby не реализованы какие-либо проверки подлинности по умолчанию. Вместо этого пользователю предлагается самому выбрать библиотеку для проверки подлинности или непосредственно использовать конечную точку OAuth.

Рекомендуемая библиотека для проверки подлинности с использованием AAD — [ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-ruby).

### Пример использования

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

## Разработка

### Выполнение тестов

#### Тесты модулей

Выполняются следующим образом:

    bundle exec rspec

#### Тесты на интеграцию

В ходе тестов на интеграцию вносятся реальные изменения в действующую учетную запись, поэтому их следует проводить только со специально выделенной тестовой учетной записью.

Если эти тесты обязательно следует выполнить, создайте файл `.env` следующего вида:

    MS_GRAPH_USERNAME=имя_пользователя@xxxxx.onmicrosoft.com
    MS_GRAPH_PASSWORD=xxxxxxxxxxxx
    MS_GRAPH_CLIENT_ID=xxxxx-xxxx-xxx-xxxxxx-xxxxxxx
    MS_GRAPH_CLIENT_SECRET="xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx="
    MS_GRAPH_TENANT=xxxxx.onmicrosoft.com

Указав все необходимые учетные данные, можно провести тесты на интеграцию следующим образом:

    bundle exec rspec integration_spec

## Документация и ресурсы

* [API Microsoft Graph](https://graph.microsoft.io)

## Проблемы

Для просмотра и регистрации проблем см. раздел [проблем](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues).

## Лицензия

© Корпорация Майкрософт. Все права защищены. Предоставляется по [лицензии](LICENSE) MIT.

Этот проект соответствует [Правилам поведения разработчиков открытого кода Майкрософт](https://opensource.microsoft.com/codeofconduct/). Дополнительные сведения см. в разделе [часто задаваемых вопросов о правилах поведения](https://opensource.microsoft.com/codeofconduct/faq/). Если у вас возникли вопросы или замечания, напишите нам по адресу [opencode@microsoft.com](mailto:opencode@microsoft.com).
