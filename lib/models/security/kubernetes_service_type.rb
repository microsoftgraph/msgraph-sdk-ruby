module MicrosoftGraph
    module Models
        module Security
            KubernetesServiceType = {
                Unknown: :Unknown,
                ClusterIP: :ClusterIP,
                ExternalName: :ExternalName,
                NodePort: :NodePort,
                LoadBalancer: :LoadBalancer,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
