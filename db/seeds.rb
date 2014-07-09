# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

20.times do |no|
  p Book.create(:name => "タイトル #{no}",:author => "作者",:company => "大阪会社",:code => 123,:publish_date => "2014-01-01")
end

5.times do |no|
  p User.create(:name => "ユーザー #{no}",:tell =>222222,:code => 1111 * no,:address => "大阪",:birthday => "1991-08-31",:password => 1111 * no,:admin => false)
end

p User.create(:name => "admin",:tell =>111111,:code => 11110,:address => "大阪",:birthday => "1990-08-30",:password => "11110",:admin => true)

5.times do |no|
  p BookRecord.create(:book_id => no + 1,:user_id => rand(0..6),:lend_date => Date.today - rand(10...20).days,:flag => false,:ex_return_date => Date.today - 10.days)
end

5.times do |no|
  p BookRecord.create(:book_id => no + 6 ,:user_id => rand(0..6),:lend_date => Date.today - rand(1...10).days,:flag => false,:ex_return_date => Date.today + rand(1...10).days)
end

# Book.create(:name => '桃太郎',:author => '作者',:company => '大阪会社',:code => 123,:publish_date => '2014-01-01')
# Book.create(:name => '浦島太郎',:author => '作者',:company => '東京会社',:code => 124,:publish_date => '2013-12-01')
# Book.create(:name => '一寸法師',:author => '作者',:company => '京都会社',:code => 123,:publish_date => '2010-11-05')
# Book.create(:name => 'かぐや姫',:author => '作者',:company => '滋賀会社',:code => 123,:publish_date => '2014-07-01')
# Book.create(:name => '金太郎',:author => '作者',:company => '三重会社',:code => 123,:publish_date => '1989-11-24')
# Book.create(:name => '白雪姫',:author => '作者',:company => '福井会社',:code => 123,:publish_date => '1990-05-01')
# Book.create(:name => 'シンデレラ',:author => '作者',:company => '千葉会社',:code => 123,:publish_date => '2009-08-01')
# Book.create(:name => '赤ずきん',:author => '作者',:company => '茨城会社',:code => 123,:publish_date => '1992-01-28')
# Book.create(:name => 'さるかに合戦',:author => '作者',:company => '栃木会社',:code => 123,:publish_date => '2003-09-10')
# Book.create(:name => '花咲か爺さん',:author => '作者',:company => '島根会社',:code => 123,:publish_date => '2014-01-01')

# User.create(:name => 'admin',:tell =>111111,:code => 1111,:address => '大阪',:birthday => '1990-08-30',:password => '1111',:admin => true)
# User.create(:name => '田中',:tell =>222222,:code => 2222,:address => '大阪',:birthday => '1991-08-31',:password => '2222',:admin => false)
# User.create(:name => '山田',:tell =>222222,:code => 3333,:address => '大阪',:birthday => '1992-09-01',:password => '3333',:admin => false)

# BookRecord.create(:book_id => 3,:user_id => 1,:lend_date => '2014-06-01',:flag => false,:ex_return_date => '2014-07-01')
# BookRecord.create(:book_id => 2,:user_id => 1,:lend_date => '2014-07-09',:flag => false,:ex_return_date => '2014-07-14')
# BookRecord.create(:book_id => 1,:user_id => 1,:lend_date => '2014-07-01',:flag => false,:ex_return_date => '2014-07-14')
# BookRecord.create(:book_id => 4,:user_id => 2,:lend_date => '2013-07-01',:flag => false,:ex_return_date => '2015-07-14')
# BookRecord.create(:book_id => 5,:user_id => 2,:lend_date => '2014-06-01',:flag => false,:ex_return_date => '2014-07-30')
# BookRecord.create(:book_id => 6,:user_id => 2,:lend_date => '2014-08-31',:flag => false,:ex_return_date => '2015-04-14')