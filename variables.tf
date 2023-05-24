variable "control_plane_mtu" {
  description = "Control Plane MTU Policy. Minimum value: `576`. Maximum value: `9000`."
  type        = number
  default     = 9000

  validation {
    condition     = var.control_plane_mtu >= 576 && var.control_plane_mtu <= 9000
    error_message = " Minimum value: `576`. Maximum value: `9000`."
  }
}