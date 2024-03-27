part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_methods/attach
@JsonSerializable()
class AttachPaymentMethodRequest {
  /// The ID of the customer to which to attach the PaymentMethod.
  final String customer;

  /// The payment method ID.
  final String id;

  AttachPaymentMethodRequest({
    required this.customer,
    required this.id,
  });

  factory AttachPaymentMethodRequest.fromJson(Map<String, dynamic> json) =>
      _$AttachPaymentMethodRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AttachPaymentMethodRequestToJson(this)..remove('id');
}
