require 'sqlite3'

#moocademy.db 
table = SQLite3::Database.new("moocademy.db")
tableau_cours = table.execute("create table 'tableau_cours'('id' integer primary key autoincrement, 'titre' text, 'description' text);")
tableau_lesson = table.execute("create table 'tableau_lesson'('id' integer primary key autoincrement, 'id_cours' integer, 'titre' text, 'body' text);")

#the hacking news
table2 = SQLite3::Database.new("the_hacking_new.db")
user = table2.execute("create table 'User'('id' integer primary key autoincrement, 'user_name' text);")

pin = table2.execute("create table 'tableau_pin'('id' integer primary key autoincrement, 'u_id' integer, 'pin_url' text);")

commentaire = table2.execute("create table 'commentaire'('id' integer primary key autoincrement, 'p_id' integer, 'u_id' integer, 'commentaire' text);")

#
