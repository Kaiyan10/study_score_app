class StandardTestSubject {
  StandardTestSubject({
    this.modernJapaneseTestSubject = "現代文",
    this.classicalJapaneseTestSubject = "古文",
    this.classicalChineseTestSubject = "漢文",
    this.math1TestSubject,
    this.math2TestSubject = "数学Ⅱ、数学B、数学C",
    this.science1TestSubject,
    this.science2TestSubject,
    this.society1TestSubject,
    this.society2TestSubject,
    this.readingTestSubject = "英語リーディング",
    this.listeningTestSubject = "英語リスニング",
    this.informationTestSubject = "情報"
  });

  String? modernJapaneseTestSubject;
  String? classicalJapaneseTestSubject;
  String? classicalChineseTestSubject;
  Math1Subject? math1TestSubject ;
  String? math2TestSubject;
  ScienceSubject? science1TestSubject;
  ScienceSubject? science2TestSubject;
  SocietySubject? society1TestSubject;
  SocietySubject? society2TestSubject;
  String? readingTestSubject;
  String? listeningTestSubject;
  String? informationTestSubject = "情報";
}

enum Math1Subject{
  math1,
  math1a
}

enum ScienceSubject{
  basicPhysics,
  basicChemistry,
  basicBiology,
  basicGeology,
  physics,
  chemistry,
  biology,
  geology
}

enum SocietySubject{
  basicSociety,
  geography,
  japaneseHistory,
  worldHistory,
  politicsAndEconomics,
  politicsAndEthics
}

String Math1SubjectGetName(Math1Subject subject){
  if (subject == Math1Subject.math1){
    return "数学1";
  }else if(subject == Math1Subject.math1a){
    return "数学1・A";
  }
  else{
    return "";
  }
}

String ScienceSubjectGetName(ScienceSubject subject){
  if (subject == ScienceSubject.basicPhysics){
    return "物理基礎";
  }else if(subject == ScienceSubject.basicChemistry){
    return "化学基礎";
  }else if(subject == ScienceSubject.basicBiology){
    return "生物基礎";
  }else if(subject == ScienceSubject.basicGeology){
    return "地学基礎";
  }else if (subject == ScienceSubject.physics){
    return "物理";
  }else if(subject == ScienceSubject.chemistry){
    return "化学";
  }else if(subject == ScienceSubject.biology){
    return "生物";
  }else if(subject == ScienceSubject.geology){
    return "地学";
  } else{
    return "";
  }
}

String SocietySubjectGetName(SocietySubject subject){
  if (subject == SocietySubject.basicSociety){
    return "地理総合／歴史総合／公共";
  }else if(subject == SocietySubject.geography){
    return "地理総合、地理探究";
  }else if(subject == SocietySubject.japaneseHistory){
    return "歴史総合、日本史探究";
  }else if(subject == SocietySubject.worldHistory){
    return "歴史総合、世界史探究";
  }else if (subject == SocietySubject.politicsAndEconomics){
    return "公共、政治・経済";
  }else if(subject == SocietySubject.politicsAndEthics){
    return "公共、倫理";
  }else{
    return "";
  }
}