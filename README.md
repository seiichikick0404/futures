# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

 ## usersテーブル

| Column   | Type   | Options     | 
| -------- | ------ | ----------- | 
| nickname | string | null: false | 
| email    | string | null: false | 
| password | string | null: false | 
|          |        |             | 
|          |        |             | 
|          |        |             | 
|          |        |             | 

## アソシエーション
has_many :comments
has_many :tweets
has_many :categories



## tweetsテーブル

| Column          | Type       | Options                        | 
| --------------- | ---------- | ------------------------------ | 
| text            | text       | null: false                    | 
| time_hour_id    | integer    | null: false                    | 
| time_minutes_id | integer    | null: false                    | 
| user_id         | references | null: false, foreign_key: true | 
|                 |            |                                | 
|                 |            |                                | 

## アソシエーション
has_many :comments
has_many :categories
belongs_to :user
