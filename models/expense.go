package models

import (
	"time"
)

type Expense struct {
	ID          uint `gorm:"primaryKey"`
	UserID      uint
	Category    string
	Amount      float64
	Description string
	Date        time.Time
}
