package database

import (
	"fmt"
	"log"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"

	"expense-trackert-backend/models"
)

var DB *gorm.DB

func ConnectDB() {
	// Add schema using search_path
	dsn := "host=localhost user=postgres password=root dbname=expense-tracker-backend port=5432 sslmode=disable search_path=expense-tracker-backend-master-schema"

	var err error
	DB, err = gorm.Open(postgres.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatalf("Failed to connect to the database: %v", err)
	}

	// Validate the connection by pinging the DB
	sqlDB, err := DB.DB()
	if err != nil {
		log.Fatalf("Failed to get db instance from GORM: %v", err)
	}

	err = sqlDB.Ping()
	if err != nil {
		log.Fatalf("Database ping failed: %v", err)
	}

	// Auto migrate your models
	err = DB.AutoMigrate(&models.User{}, &models.Task{})
	if err != nil {
		log.Fatal("Failed to auto migrate:", err)
	}

	fmt.Println("Database connected successfully with schema: expense-tracker-backend-master-schema")
}
