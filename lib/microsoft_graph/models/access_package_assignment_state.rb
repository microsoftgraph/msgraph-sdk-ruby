module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the identityGovernance singleton.
    AccessPackageAssignmentState = {
        Delivering: :Delivering,
        PartiallyDelivered: :PartiallyDelivered,
        Delivered: :Delivered,
        Expired: :Expired,
        DeliveryFailed: :DeliveryFailed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
