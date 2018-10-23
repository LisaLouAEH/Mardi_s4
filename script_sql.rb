require 'sqlite3'

#moocademy.db 
table = SQLite3::Database.new("moocademy.db")
tableau_cours = table.execute("create table 'tableau_cours'('id' integer primary key autoincrement, 'titre' text, 'description' text);")
tableau_lesson = table.execute("create table 'tableau_lesson'('id' integer primary key autoincrement, 'id_cours' integer, 'titre' text, 'body' text);")

#the hacking pinterest
table2 = SQLite3::Database.new("the_hacking_pinterest.db")
user2 = table2.execute("create table 'User'('id' integer primary key autoincrement, 'user_name' text);")
#--> chaque user peux creer un pin contenant un lien d'image :
pin = table2.execute("create table 'tableau_pin'('id' integer primary key autoincrement, 'u_id' integer, 'pin_url' text);")
#--> chaque user peux commenter un pin :
com_pin = table2.execute("create table 'commentaire'('id' integer primary key autoincrement, 'p_id' integer, 'u_id' integer, 'commentaire' text);")

#the hacking new
table3 = SQLite3::Database.new("the_hacking_new.db")
user3 = table3.execute("create table 'User3'('id' integer primary key autoincrement, 'user_name' text);")
#--> chaque user peux creer un post contenant un lien.
post_link = table3.execute("create table 'post'('id' integer primary key autoincrement, 'u_id' integer, 'post_url' text);")
#--> chaque user peux commenter le post de quelqu'un d'autre.
com_link = table3.execute("create table 'commentaires_post'('id' integer primary key autoincrement, 'u_id' integer, 'post_id' integer, 'commentaire' text);")
#--> chaque user peux commenter un commentaire, possible classement par date.
com_2_com = table3.execute("create table 'commentaire_commentaire'('id' integer primary key autoincrement, 'com_id' integer, 'date' integer, 'commentaire' text);")

#the hacking class
table4 = SQLite3::Database.new("the_hacking_class.db")
#--> un seul cours par étudiant :
student = table4.execute("create table 'student'('id' integer primary key autoincrement, 'cours_id' integer, 'student_name' text);")
#--> plusieurs étudiants par cours :
cour = table4.execute("create table 'cour'('id' integer primary key autoincrement, 'title' text);")