import "package:flutter_riverpod/flutter_riverpod.dart";

class FirstChoiceSchool {
  FirstChoiceSchool({
    this.schoolName ="",
    this.depertment ="",
    this.faculty="",
    this.firstTestDate,
    this.secondTestDate,
  });

  String schoolName;
  String faculty;
  String depertment;
  DateTime? firstTestDate;
  DateTime? secondTestDate;

  void editSchoolData(FirstChoiceSchool newSchool){
    schoolName = newSchool.schoolName;
    depertment = newSchool.depertment;
    faculty = newSchool.faculty;
  }

  void editSchoolName(String newName){
    schoolName = newName;
  }

}

final firstChoiceSchoolProvider = StateProvider(
  (ref){
    return FirstChoiceSchool(schoolName: "北海道大学",depertment: "総合入試理系",faculty: "数学重点");
  }
);
