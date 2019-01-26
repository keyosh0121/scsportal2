# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Authority.create(name: "none")
Authority.create(name: "producer")
Authority.create(name: "webmaster")
Authority.create(name: "developer")
Authority.create(name: "sound_crew")

Period.create(name: "0限", start_time: "8:00", end_time: "9:00")
Period.create(name: "1限", start_time: "9:00", end_time: "10:30")
Period.create(name: "2限", start_time: "9:00", end_time: "12:10")
Period.create(name: "3限", start_time: "13:00", end_time: "14:30")
Period.create(name: "4限", start_time: "14:45", end_time: "16:15")
Period.create(name: "5限", start_time: "16:30", end_time: "18:00")
Period.create(name: "6限", start_time: "18:15", end_time: "19:45")
Period.create(name: "7限", start_time: "19:55", end_time: "21:30")

Room.create(name:"E1016", room_type:1)
Room.create(name:"E1116", room_type:1)
Room.create(name:"会議スペース", room_type:1)
Room.create(name:"B101", room_type:2)
Room.create(name:"B102", room_type:2)
Room.create(name:"B103", room_type:2)
Room.create(name:"B104", room_type:2)
Room.create(name:"B105", room_type:2)
Room.create(name:"B106", room_type:2)
Room.create(name:"B123", room_type:2)
Room.create(name:"B126", room_type:2)
Room.create(name:"キャンセル待ち", room_type:2)
Room.create(name:"空き部屋なし", room_type:2)
