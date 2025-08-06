package controllers

import (
	"expense-tracker-backend/models"
	"fmt"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"golang.org/x/crypto/bcrypt"
)

func RegisterUser(c *gin.Context) {
	var input struct {
		Name     string `json:"name"`
		Email    string `json:"email"`
		Password string `json:"password"`
	}

	if err := c.ShouldBindJSON(&input); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid input"})
		return
	}

	hashedPassword, err := bcrypt.GenerateFromPassword([]byte(input.Password), bcrypt.DefaultCost)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Password encryption failed"})
		return
	}

	file, err := c.FormFile("profile_photo")
	photoPath := ""
	if err == nil {
		photoPath = fmt.Sprintf("uploads/%d_%s", time.Now().Unix(), file.Filename)
		c.SaveUploadedFile(file, photoPath)
	}

	verificationToken := uuid.New().String() // mock email verification token

	user := models.User{
		Name:              input.Name,
		Email:             input.Email,
		Password:          string(hashedPassword),
		ProfilePhoto:      photoPath,
		EmailVerified:     false,
		VerificationToken: verificationToken,
	}

	if err := models.DB.Create(&user).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Could not create user"})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message":            "User registered successfully. Please verify your email.",
		"verification_token": verificationToken,
	})
}
