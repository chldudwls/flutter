class Room {
  final String roomNumber;
  Room(this.roomNumber);
  void roomNum() {
    print('방번호:${roomNumber}');
  }
}

class House {
  final String addr;
  final Room room;
  House(this.addr, String roomNumber) : room = Room(roomNumber);
  void displayHouseInfo() {
    print('집 주소:${addr}');
    room.roomNum();
  }
}

void main() {
  House room1 = House('서울시 강남구', 'a101');
  room1.displayHouseInfo();
}
