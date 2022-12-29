module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    AccessPackageAssignmentState = {
        Delivering: :Delivering,
        PartiallyDelivered: :PartiallyDelivered,
        Delivered: :Delivered,
        Expired: :Expired,
        DeliveryFailed: :DeliveryFailed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
