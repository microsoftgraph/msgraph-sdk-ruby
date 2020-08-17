# Introducción a la Biblioteca cliente de Microsoft Graph para Ruby

Esta biblioteca cliente es una versión candidata para lanzamiento y todavía está en estado de vista previa. Como tal, esta biblioteca **no está lista para producción**. Prosiga por su cuenta y continúe proporcionando [Comentarios](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new) mientras iteramos hacia una biblioteca compatible para producción.

## Instalación
ejecute ```gem install microsoft_graph``` o incluya```gem microsoft_graph``` en su archivo gema.
## Introducción

### Registrar su aplicación

Registre su aplicación para usar la API de Microsoft Graph con uno de los siguientes portales de autenticación compatibles:

* [Portal de registro de aplicaciones de Microsoft](https://apps.dev.microsoft.com) (**Recomendado**):
Registre una nueva aplicación que se autentique con el punto de conexión de autenticación v 2.0. Este punto de conexión autentica tanto cuentas personales (de Microsoft) como profesionales o educativas (de Azure Active Directory).
* [Microsoft Azure Active Directory](https://manage.windowsazure.com): Registre una nueva aplicación en el inquilinode
Active Directory para dar soporte técnico a los usuarios de cuentas
profesionales o educativas de su inquilino,
o a varios inquilinos.

### Autenticarse para el servicio de Microsoft Graph

La Biblioteca cliente de Microsoft Graph para Ruby no incluye ninguna implementación de autenticación predeterminada. En su lugar, el usuario tendrá que autenticarse con la biblioteca de su elección o con el punto de conexión de OAuth directamente.

La biblioteca recomendada para autenticarse en ADD es [ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-ruby).

### Ejemplo de uso

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

## Desarrollo

### Ejecución de pruebas

#### Pruebas unitarias

Ejecútelas de la siguiente manera:

    bundle exec rspec

#### Pruebas de integración

Las pruebas de integración realizan cambios reales en una cuenta de Live, por lo que no debe ejecutarlas en nada excepto en una cuenta de prueba dedicada.

Si está seguro de que quiere ejecutarlas, debe configurar un archivo `.env` que tenga un aspecto similar al siguiente:

    MS_GRAPH_USERNAME=usernamehere@xxxxx.onmicrosoft.com
    MS_GRAPH_PASSWORD=xxxxxxxxxxxx
    MS_GRAPH_CLIENT_ID=xxxxx-xxxx-xxx-xxxxxx-xxxxxxx
    MS_GRAPH_CLIENT_SECRET="xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx="
    MS_GRAPH_TENANT=xxxxx.onmicrosoft.com

Cuando tenga todas las credenciales adecuadas, puede ejecutar pruebas de integración como esta:

    bundle exec rspec integration_spec

## Documentación y recursos

* [API de Microsoft Graph](https://graph.microsoft.io)

## Problemas

Para ver o registrar problemas, consulte [problemas](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues).

## Licencia

Copyright (c) Microsoft Corporation. Reservados todos los derechos. Publicado bajo la [licencia](LICENSE) MIT.

Este proyecto ha adoptado el [Código de conducta de código abierto de Microsoft](https://opensource.microsoft.com/codeofconduct/). Para obtener más información, vea [Preguntas frecuentes sobre el código de conducta](https://opensource.microsoft.com/codeofconduct/faq/) o póngase en contacto con [opencode@microsoft.com](mailto:opencode@microsoft.com) si tiene otras preguntas o comentarios.
