module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    AccessPackageRequestState = {
        Submitted: :Submitted,
        PendingApproval: :PendingApproval,
        Delivering: :Delivering,
        Delivered: :Delivered,
        DeliveryFailed: :DeliveryFailed,
        Denied: :Denied,
        Scheduled: :Scheduled,
        Canceled: :Canceled,
        PartiallyDelivered: :PartiallyDelivered,
        UnknownFutureValue: :UnknownFutureValue,
    }
end