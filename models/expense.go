package models

import (
	"time"

	"gorm.io/gorm"
)

type Expense struct {
	gorm.Model
	ID          uint `gorm:"primaryKey"`
	UserID      uint
	Category    string
	Amount      float64
	Description string
	Date        time.Time
}
