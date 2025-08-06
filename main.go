package main

import (
	"expense-tracker-backend/database"
	"expense-tracker-backend/routes"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	// Connect to DB
	database.ConnectDB()

	// Setup routes
	routes.SetupRoutes(r)

	// Start server
	r.Run(":8080")
}
