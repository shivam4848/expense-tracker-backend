// main.go
package main

import (
	"github.com/gin-gonic/gin"
	"github.com/yourname/finance-tracker-backend/database"
)

func main() {
	database.ConnectDB()
	r := gin.Default()

	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{"message": "pong"})
	})

	r.Run(":8080")
}
