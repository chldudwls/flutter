class Resident {
  final String name;

  Resident(this.name);
  void displayResident() {
    print('거주자 이름: ${name}');
  }
}

class Apartment {
  final String buildingName;
  List<Resident> residents;
  Apartment(this.buildingName) : residents = [];
  void addResident(Resident res) {
    residents.add(res);
  }

  void displayDepartmentInfo() {
    print('아파트 이름 : ${buildingName}');
    for (var res in residents) {
      res.displayResident();
    }
  }
}

void main() {
  Apartment apr1 = Apartment('자이');
  Apartment apr2 = Apartment('롯데');
  Apartment apr3 = Apartment('카이저');

  Resident de1 = Resident('홍길동');
  Resident de2 = Resident('말파이트');
  Resident de3 = Resident('야스오');
  Resident de4 = Resident('카이저');
  Resident de5 = Resident('미포');

  apr1.addResident(de1);
  apr2.addResident(de2);
  apr2.addResident(de3);
  apr3.addResident(de4);
  apr3.addResident(de5);

  apr1.displayDepartmentInfo();
  apr2.displayDepartmentInfo();
  apr3.displayDepartmentInfo();
}
