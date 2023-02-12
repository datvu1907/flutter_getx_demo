class ResponseModel {

  final dynamic data;
  final bool status;
  final List<dynamic> messages;

  ResponseModel({
    this.data,
    required this.status,
    required this.messages
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(

      data: json['datas'],
      status: json['status'],
      messages:  json['messages'],

    );
  }

}