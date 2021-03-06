Member.delete_all
Member.reset_pk_sequence
Driver.delete_all
Driver.reset_pk_sequence
DriverDetail.delete_all
DriverDetail.reset_pk_sequence
OrderStatus.delete_all
OrderStatus.reset_pk_sequence
ActiveBook.delete_all
ActiveBook.reset_pk_sequence
BookHistory.delete_all
BookHistory.reset_pk_sequence

Member.create({
  email: "member@gmail.com",
  password: "member",
  full_name: "Member One",
  phone_number: "08561856245",
  go_pay_value: 1000,
  go_point_value: 1000
})

Driver.create({
  email: "driver@gmail.com",
  password: "driver",
  full_name: "Mister Driver",
  birthdate: "1998-09-11",
  license_plate: "B1511BNZ",
  rating: 4.9,
  phone_number: "08561657562",
  license_number: "123456789012",
  ktp_number: "1234567890123456",
  address: "Syahdan baru",
  income: 0
})

DriverDetail.create({
  curr_lat: 12.1234,
  curr_long: 132.123,
  is_active: true
})

OrderStatus.create([
  { status: 'Pending'},
  { status: 'Accepted'},
  { status: 'Picked Up'},
  { status: 'Arrived'},
  { status: 'Canceled by Driver'},
  { status: 'Canceled by Member'}
])