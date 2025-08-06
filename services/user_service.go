package services

import (
	"errors"
	"expense-tracker-backend/models"
	"expense-tracker-backend/utils"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
)

type RegisterInput struct {
	Name         string `form:"name" binding:"required"`
	Email        string `form:"email" binding:"required,email"`
	Password     string `form:"password" binding:"required,min=10"`
	ProfilePhoto string `form:"profile_photo"`
}

func HandleUserRegistration(c *gin.Context) (*models.User, error) {
	var input RegisterInput

	if err := c.ShouldBind(&input); err != nil {
		return nil, errors.New("invalid input: " + err.Error())
	}

	// Check if user already exists
	var existing models.User
	if err := models.DB.Where("email = ?", input.Email).First(&existing).Error; err == nil {
		return nil, errors.New("email already registered")
	}

	hashedPassword, err := utils.HashPassword(input.Password)
	if err != nil {
		return nil, errors.New("could not hash password")
	}

	verificationToken := uuid.New().String()

	user := models.User{
		Name:              input.Name,
		Email:             input.Email,
		Password:          hashedPassword,
		ProfilePhoto:      input.ProfilePhoto,
		EmailVerified:     false,
		VerificationToken: verificationToken,
	}

	if err := models.DB.Create(&user).Error; err != nil {
		return nil, errors.New("could not create user")
	}
	return &user, nil
}
