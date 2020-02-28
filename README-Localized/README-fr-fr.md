# Prise en main de la Bibliothèque de client Microsoft Graph pour Ruby

Cette bibliothèque cliente est une version finale et se présente encore dans en mode préversion. Cette bibliothèque n'est donc **pas prête pour la production**. Vous assumez les risques liés à son utilisation. Merci de continuer à fournir des [commentaires](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new) alors que nous répétons certaines opérations en vue d'offrir une bibliothèque prise en charge par la production.

## Installation
Exécutez ```gem install microsoft_graph``` ou incluez ```gem microsoft_graph``` dans votre gemfile.
## Prise en main

### Inscription de votre application

Enregistrez votre application à l’aide de l’un des portails d’authentification pris en charge
suivants pour utiliser l'API Microsoft Graph :

* [Portail d’inscription des applications de Microsoft](https://apps.dev.microsoft.com) (**Recommandé**) :
Inscrivez une nouvelle application, vous permettant d'être authentifié(e), à l’aide du point de terminaison d’authentification v2.0. Ce point de terminaison authentifie les
comptes personnels (Microsoft) ainsi que les comptes professionnels ou scolaires (Azure Active Directory).
* [Microsoft Azure Active Directory](https://manage.windowsazure.com) :
Enregistrez une nouvelle application dans l’annuaire Active Directory de votre client pour prendre en charge les utilisateurs professionnels ou scolaires de votre client ou de plusieurs clients.

### S'authentifier au service de Microsoft Graph

La Bibliothèque de client Microsoft Graph pour Ruby n'inclut pas actuellement les implémentations d'authentification par défaut. Au lieu de cela, l’utilisateur voudra s’authentifier à l’aide de la bibliothèque de son choix, ou dans le point de terminaison OAuth directement.

La bibliothèque recommandée pour l’authentification auprès de Azure Active Directory est [ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-ruby).

### Exemple d’utilisation

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

## Développement

### Exécution de tests

#### Tests unitaires

Exécutez-les comme suit :

    bundle exec rspec

#### Tests d'intégration

Les tests d’intégration apportent de réels changements à un compte actif. Exécutez-les donc dans un compte de test dédié.

Si vous êtes sûr de vouloir les exécuter, vous devez configurer un fichier`.env` semblable à ce qui suit :

    MS_GRAPH_USERNAME=usernamehere@xxxxx.onmicrosoft.com
    MS_GRAPH_PASSWORD=xxxxxxxxxxxx
    MS_GRAPH_CLIENT_ID=xxxxx-xxxx-xxx-xxxxxx-xxxxxxx
    MS_GRAPH_CLIENT_SECRET="xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx="
    MS_GRAPH_TENANT=xxxxx.onmicrosoft.com

Une fois que vous disposez des informations d’identification appropriées, vous pouvez exécuter les tests d’intégration comme suit :

    bundle exec rspec integration_spec

## Documentation et ressources

* [API Microsoft Graph](https://graph.microsoft.io)

## Problèmes

Pour afficher ou enregistrer des problèmes, voir [problèmes](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues).

## Licence

Copyright (c) Microsoft Corporation. Tous droits réservés. Sous [licence MIT](LICENSE).

Ce projet a adopté le [Code de conduite Open Source de Microsoft](https://opensource.microsoft.com/codeofconduct/). Pour en savoir plus, reportez-vous à la [FAQ relative au Code de conduite](https://opensource.microsoft.com/codeofconduct/faq/) ou contactez [opencode@microsoft.com](mailto:opencode@microsoft.com) pour toute question ou tout commentaire.
