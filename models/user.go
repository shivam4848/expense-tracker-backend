package models

import (
	"gorm.io/gorm"
)

var DB *gorm.DB

type User struct {
	gorm.Model
	Name              string `json:"name"`
	Email             string `json:"email" gorm:"unique"`
	Password          string `json:"password"`
	ProfilePhoto      string `json:"profile_photo"`
	EmailVerified     bool   `json:"email_verified"`
	VerificationToken string `json:"verification_token"`
}
