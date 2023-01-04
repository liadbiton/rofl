package main

import (
	"database/sql"
	"fmt"

	_ "github.com/lib/pq"
)

const (
	pgHost     = "127.0.0.1"
	pgPort     = 5432
	pgUser     = "postgres"
	pgPassword = "admin"
	pgDbName   = "dbBH"
)

func main() {
	// connection string
	psqlconn := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable", pgHost, pgPort, pgUser, pgPassword, pgDbName)

	// open database
	db, err := sql.Open("postgres", psqlconn)
	CheckError(err)

	// close database
	defer db.Close()

	// check db
	err = db.Ping()
	CheckError(err)

	insertDynStmt := `insert into "olds"("FName", "LName") values($1, $2)`
	_, e := db.Exec(insertDynStmt, "sol", "meyer")
	CheckError(e)

	fmt.Println("Connected!")
}

func CheckError(err error) {
	if err != nil {
		panic(err)
	}
}
