# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Authority.create(name: "未承認")
Authority.create(name: "一般")
Authority.create(name: "ライブプロデューサー")
Authority.create(name: "ウェブマスター")
Authority.create(name: "開発者")

Period.create(name: "0限", start_time: "8:00", end_time: "9:00") if Period.where(name: "0限").none?
Period.create(name: "1限", start_time: "9:00", end_time: "10:30") if Period.where(name: "1限").none?
Period.create(name: "2限", start_time: "9:00", end_time: "12:10") if Period.where(name: "2限").none?
Period.create(name: "3限", start_time: "13:00", end_time: "14:30") if Period.where(name: "3限").none?
Period.create(name: "4限", start_time: "14:45", end_time: "16:15") if Period.where(name: "4限").none?
Period.create(name: "5限", start_time: "16:30", end_time: "18:00") if Period.where(name: "5限").none?
Period.create(name: "6限", start_time: "18:15", end_time: "19:45") if Period.where(name: "6限").none?
Period.create(name: "7限", start_time: "19:55", end_time: "21:30") if Period.where(name: "7限").none?

Room.create(name: "E1016", room_type: 1) if Room.where(name: "E1016").none?
Room.create(name: "E1116", room_type: 1) if Room.where(name: "E1116").none?
Room.create(name: "会議スペース", room_type: 1) if Room.where(name: "会議スペース").none?
Room.create(name: "B101", room_type: 2) if Room.where(name: "B101").none?
Room.create(name: "B102", room_type: 2) if Room.where(name: "B102").none?
Room.create(name: "B103", room_type: 2) if Room.where(name: "B103").none?
Room.create(name: "B104", room_type: 2) if Room.where(name: "B104").none?
Room.create(name: "B105", room_type: 2) if Room.where(name: "B105").none?
Room.create(name: "B106", room_type: 2) if Room.where(name: "B106").none?
Room.create(name: "B123", room_type: 2) if Room.where(name: "B123").none?
Room.create(name: "B126", room_type: 2) if Room.where(name: "B126").none?
Room.create(name: "キャンセル待ち", room_type: 2) if Room.where(name: "キャンセル待ち").none?
Room.create(name: "空き部屋なし", room_type: 2) if Room.where(name: "空き部屋なし").none?

Section.create(name: "舞台監督")
Section.create(name: "音響")
Section.create(name: "照明")
Section.create(name: "舞台美術")
Section.create(name: "デザイン")
Section.create(name: "TK")
Section.create(name: "インカム")
Section.create(name: "会場")
Section.create(name: "広報")
Section.create(name: "記録")
Section.create(name: "渉外")
Section.create(name: "宴会")


User.create!(name: "和田直人", email:"Salvare3429@gmail.com", password:"1234567", year:2014, uni:"waseda", section_id:9, authority_id:5, gender: 0)  if User.where(email:"Salvare3429@gmail.com").none?
User.create!(name: "吉山慶", email:"test1@gmail.com", password:"1234567", year:2014, uni:"waseda", section_id:9, authority_id:5, gender: 0) if User.where(email:"test1@gmail.com").none?
User.create!(name: "荒井風太", email:"test2@gmail.com", password:"1234567", year:2014, uni:"waseda", section_id:9, authority_id:5, gender: 0) if User.where(email:"test2@gmail.com").none?


RegularBand.create(name: "TestBand A", year: 2014, registeration: true, master_id: 1, pa_id: 1, description: "regular band test data")
RegularBand.create(name: "TestBand B", year: 2014, registeration: true, master_id: 2, pa_id: 1, description: "regular band test data")
RegularBand.create(name: "TestBand C", year: 2014, registeration: true, master_id: 3, pa_id: 1, description: "regular band test data")


Mic.create(date: Date.new(2019,3,25), user_id: 1, band_id: 2, room_id: 1, period_id: 3, order: 1, remark: "I'm Tasky5")
Mic.create(date: Date.new(2019,3,25), user_id: 2, band_id: 2, room_id: 1, period_id: 3, order: 2, remark: "I'm Tasky5")
Mic.create(date: Date.new(2019,4,25), user_id: 3, band_id: 3, room_id: 1, period_id: 3, order: 3)
Mic.create(date: Date.new(2019,3,25), user_id: 3, band_id: 3, room_id: 1, period_id: 4, order: 1)
Mic.create(date: Date.new(2019,4,26), user_id: 3, band_id: 3, room_id: 2, period_id: 4, order: 1)
Mic.create(date: Date.new(2019,3,20), user_id: 3, band_id: 1, room_id: 2, period_id: 5, order: 1)
Mic.create(date: Date.new(2019,3,27), user_id: 2, band_id: 2, room_id: 1, period_id: 4)
Mic.create(date: Date.new(2019,3,27), user_id: 3, band_id: 3, room_id: 1, period_id: 4)
Mic.create(date: Date.new(2019,3,27), user_id: 3, band_id: 3, room_id: 1, period_id: 4)
Mic.create(date: Date.new(2019,3,28), user_id: 2, band_id: 2, room_id: 1, period_id: 4)
Mic.create(date: Date.new(2019,3,28), user_id: 3, band_id: 3, room_id: 1, period_id: 4)
Mic.create(date: Date.new(2019,3,28), user_id: 2, band_id: 2, room_id: 12, period_id: 6)
Mic.create(date: Date.new(2019,3,28), user_id: 3, band_id: 3, room_id: 13, period_id: 7)
Mic.create(date: Date.new(2019,3,28), user_id: 3, band_id: 3, period_id: 7)
Mic.create(date: Date.new(2019,3,28), user_id: 3, band_id: 2, period_id: 7)
Mic.create(date: Date.new(2019,3,15), user_id: 3, band_id: 2, period_id: 7)

