package ports

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func (h *Handler) Delete(ctx *gin.Context) {
	var query = ctx.Param("id")
	if err := h.portsService.Remove(query); err != nil {
		ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	ctx.JSON(http.StatusOK,gin.H{})
	// deleteRequest
	// if err := ctx.ShouldBindQuery(&query); err != nil {
	// 	ctx.JSON(http.StatusUnprocessableEntity, gin.H{"error": err.Error()})
	// 	return
	// }
	// var isoCode string = ""
	// if query.IsoCode != nil {
	// 	isoCode = *query.IsoCode
	// }

	// err := h.portsService.Remove(isoCode)
	// if err != nil {
	// 	ctx.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
	// 	return
	// }
	// ctx.JSON(http.StatusOK, gin.H{})
}

// type deleteRequest struct {
// 	IsoCode *string `form:"iso" json:"iso" binding:"required,alpha"`
// }
