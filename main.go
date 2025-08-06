package main

import (
	"log"

	"expense-tracker-backend/database"
	"expense-tracker-backend/routes"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func main() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Error loading .env file")
	}
	database.ConnectDB()

	r := gin.Default()
	r.Static("/uploads", "./uploads")

	routes.SetupRoutes(r)

	r.Run()
}
