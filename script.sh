#iniciando banco de dados
postgres -D /usr/local/var/postgres #digitar local do executavel postgres
#criando usuario e banco de dados
createuser -dP trabalhobd2
createdb -U trabalhobd2 AppCaronas
#criando tabelas
psql -f *.sql -q AppCaronas trabalhobd2