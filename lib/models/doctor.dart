class Doctor {
  String name;
  String spe;
  String address;
  String fee;
  String clinicTime;
  String? mobile;

  // constructor

  Doctor({
    required this.name,
    required this.spe,
    required this.address,
    required this.fee,
    required this.clinicTime,
    this.mobile,
  });
}
