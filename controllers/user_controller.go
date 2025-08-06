package controllers

import (
	"expense-tracker-backend/services"
	"net/http"

	"github.com/gin-gonic/gin"
)

func RegisterUser(c *gin.Context) {
	user, err := services.HandleUserRegistration(c)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message":            "User registered successfully. Please verify your email.",
		"verification_token": user.VerificationToken,
	})
}
