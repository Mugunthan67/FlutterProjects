// To parse required this JSON data, do
//
//     final balanceModel = balanceModelFromJson(jsonString);

import 'dart:convert';

BalanceModels balanceModelFromJson(String str) => BalanceModels.fromJson(json.decode(str));

String balanceModelToJson(BalanceModels data) => json.encode(data.toJson());

class BalanceModels {
    BalanceModels({
        required this.errorFlag,
        required this.message,
        required this.data,
    });

    String errorFlag;
    String message;
    List<Datum> data;

    factory BalanceModels.fromJson(Map<String, dynamic> json) => BalanceModels(
        errorFlag: json["error_flag"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "error_flag": errorFlag,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.availableAmount,
        required this.currency,
        required this.pendingAmount,
        required this.reservedAmount,
        required this.totalAmount,
        required this.currencyCodeIso2,
        required this.currencySymbolIso2,
    });

    String availableAmount;
    String currency;
    String pendingAmount;
    String reservedAmount;
    String totalAmount;
    String currencyCodeIso2;
    String currencySymbolIso2;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        availableAmount: json["available_amount"],
        currency: json["currency"],
        pendingAmount: json["pending_amount"],
        reservedAmount: json["reserved_amount"],
        totalAmount: json["total_amount"],
        currencyCodeIso2: json["currency_code_iso2"],
        currencySymbolIso2: json["currency_symbol_iso2"],
    );

    Map<String, dynamic> toJson() => {
        "available_amount": availableAmount,
        "currency": currency,
        "pending_amount": pendingAmount,
        "reserved_amount": reservedAmount,
        "total_amount": totalAmount,
        "currency_code_iso2": currencyCodeIso2,
        "currency_symbol_iso2": currencySymbolIso2,
    };
}


