// // To parse this JSON data, do
// //
// //     final transferModel = transferModelFromJson(jsonString);

// import 'dart:convert';

// TransferModel transferModelFromJson(String str) => TransferModel.fromJson(json.decode(str));

// String transferModelToJson(TransferModel data) => json.encode(data.toJson());

// class TransferModel {
//     TransferModel({
//       required  this.errorFlag,
//       required  this.message,
//       required  this.hasMore,
//       required  this.data,
//     });

//     String errorFlag;
//     String message;
//     bool hasMore;
//     List<Datum> data;

//     factory TransferModel.fromJson(Map<String, dynamic> json) => TransferModel(
//         errorFlag: json["error_flag"],
//         message: json["message"],
//         hasMore: json["has_more"],
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "error_flag": errorFlag,
//         "message": message,
//         "has_more": hasMore,
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     };
// }

// class Datum {
//     Datum({
//       required  this.id,
//       required  this.amount,
//       required  this.status,
//       required  this.sourceId,
//       required  this.sourceType,
//       required  this.transactionType,
//       required  this.currency,
//       required  this.createdAt,
//       required  this.fee,
//       required  this.description,
//       required  this.settledAt,
//       required  this.estimatedSettledAt,
//     });

//     String id;
//     String amount;
//     Status status;
//     String sourceId;
//     String sourceType;
//     TransactionType transactionType;
//     Currency currency;
//     DateTime createdAt;
//     String fee;
//     String description;
//     String settledAt;
//     String estimatedSettledAt;

//     factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         amount: json["amount"],
//         status: statusValues.map[json["status"]],
//         sourceId: json["sourceId"],
//         sourceType: json["sourceType"],
//         transactionType: transactionTypeValues.map[json["transactionType"]],
//         currency: currencyValues.map[json["currency"]],
//         createdAt: DateTime.parse(json["createdAt"]),
//         fee: json["fee"],
//         description: json["description"],
//         settledAt: json["settledAt"],
//         estimatedSettledAt: json["estimatedSettledAt"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "amount": amount,
//         "status": statusValues.reverse[status],
//         "sourceId": sourceId,
//         "sourceType": sourceType,
//         "transactionType": transactionTypeValues.reverse[transactionType],
//         "currency": currencyValues.reverse[currency],
//         "createdAt": createdAt.toIso8601String(),
//         "fee": fee,
//         "description": description,
//         "settledAt": settledAt,
//         "estimatedSettledAt": estimatedSettledAt,
//     };
// }

// enum Currency { EMPTY, CURRENCY, PURPLE }

// final currencyValues = EnumValues({
//     "£": Currency.CURRENCY,
//     "\u0024": Currency.EMPTY,
//     "¥": Currency.PURPLE
// });

// enum Status { SETTLED, READY_FOR_DISPATCH, DISPATCHED }

// final statusValues = EnumValues({
//     "DISPATCHED": Status.DISPATCHED,
//     "READY_FOR_DISPATCH": Status.READY_FOR_DISPATCH,
//     "SETTLED": Status.SETTLED
// });

// enum TransactionType { DEPOSIT, PAYOUT, CONVERSION_BUY, CONVERSION_SELL }

// final transactionTypeValues = EnumValues({
//     "CONVERSION_BUY": TransactionType.CONVERSION_BUY,
//     "CONVERSION_SELL": TransactionType.CONVERSION_SELL,
//     "DEPOSIT": TransactionType.DEPOSIT,
//     "PAYOUT": TransactionType.PAYOUT
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
