package main

import (
	"database/sql"
	"fmt"
	_ "github.com/lib/pq"
)

const (
	PGHOST     = "bhdb.cgw9dasmgka8.us-east-1.rds.amazonaws.com"
	PGPORT     = 5432
	PGUSER     = "postgres"
	PGPASSWORD = "BHstartup1122"
	PGDBNAME   = "postgres"
)

/*
Function the receives postgres server information and return a connection object.
IN: pgHOST- Servers host name to connect.
phPort - Servers port the db is listening on.
pgUser - The username for the db.
pgPassword - The password for the db. (Currently in plain text need to be changed)
pgDbName - The database name in the remote sql server to connect to.
*/
func connectToDB(pgHost string, pgPort int, pgUser string, pgPassword string, pgDbName string) *sql.DB {
	psqlconn := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable", pgHost, pgPort, pgUser, pgPassword, pgDbName)

	// open database
	db, err := sql.Open("postgres", psqlconn)
	CheckError(err)

	return db
}

/*
Function to insert data into table named olds in a given db object. the data is
first name and last name. Need to understand how to make it more generic and how
the bds and tables will actually be.
*/
func insertToTableOlds(db *sql.DB, fname string, lname string) {

	insertDynStmt := `insert into "olds"("FName", "LName") values($1, $2)`
	_, e := db.Exec(insertDynStmt, fname, lname)
	CheckError(e)
}

/*
Function to delete data from table named olds in a given db object. by id.
Need to understand how to make it more generic and how the bds and tables will
actually be.
*/
func deleteFromTableOlds(db *sql.DB, id int) {
	deleteStmt := `delete from "olds" where "ID"=$1`
	_, e := db.Exec(deleteStmt, id)
	CheckError(e)
}

/*
Function to update the data of a specific row by the id.
Need to understand how to make it more generic and how the bds and tables will
actually be.
*/
func updateTableOlds(db *sql.DB, id int, fname string, lname string) {
	updateStmt := `update "olds" set "FName"=$1, "LName"=$2 where "ID"=$3`
	_, e := db.Exec(updateStmt, fname, lname, id)
	CheckError(e)
}

/*
 */
func queryDB(db *sql.DB, table string, columns []string, condition string) {
	query := fmt.Sprintf("SELECT \"%s\", \"%s\" FROM \"%s\"", columns[1], columns[2], table)
	rows, err := db.Query(query)
	CheckError(err)

	defer func(rows *sql.Rows) {
		err := rows.Close()
		if err != nil {
			panic(err)
		}
	}(rows)

	for rows.Next() {
		var fName string
		var lname string

		err = rows.Scan(&fName, &lname)
		CheckError(err)

		fmt.Println(fName, lname)
	}
}

func main() {
	db := connectToDB(PGHOST, PGPORT, PGUSER, PGPASSWORD, PGDBNAME)
	// close database when exiting main.
	defer func(db *sql.DB) {
		err := db.Close()
		if err != nil {
			panic(err)
		}
	}(db)

	// check db
	err := db.Ping()
	CheckError(err)

	//insertToTableOlds(db, "romy", "rohlin")
	//updateTableOlds(db, 2, "sol", "meyer")
	oldsColumns := []string{"ID", "FName", "LName"}
	queryDB(db, "olds", oldsColumns, "empty")
}

func CheckError(err error) {
	if err != nil {
		panic(err)
	}
}
