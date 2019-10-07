# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Subject.create(:department => "IT学科", :content => "とても明るくて楽しいクラスです。", :teacher => "井川先生")
Subject.create(:department => "現代ビジネス学科", :content => "クラスの仲が良く楽しいクラスです。", :teacher => "中田先生")
Subject.create(:department => "動物学科", :content => "動物との触れ合いが多く楽しいクラスです。", :teacher => "岸川先生")

Student.create(:name => "田中　太郎", :number => "JR0001", :subject_id => "IT学科")
Student.create(:name => "鈴木　次郎", :number => "JR0002", :subject_id => "IT学科")
Student.create(:name => "佐藤　のり子", :number => "JR0003", :subject_id => "動物学科")