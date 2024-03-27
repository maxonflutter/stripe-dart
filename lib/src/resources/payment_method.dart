import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class PaymentMethodResource extends Resource<PaymentMethod> {
  PaymentMethodResource(Client client) : super(client);

  Future<PaymentMethod> attach(AttachPaymentMethodRequest request) async {
    final response = await post(
      'payment_methods/${request.id}/attach',
      data: request.toJson(),
    );

    return PaymentMethod.fromJson(response);
  }

  Future<PaymentMethod> detach(String paymentMethodId) async {
    final response = await post(
      'payment_methods/$paymentMethodId/detach',
    );

    return PaymentMethod.fromJson(response);
  }
}
