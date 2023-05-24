variable "control_plane_mtu_policy" {
  description = "Control Plane MTU Policy. Minimum value: `576`. Maximum value: `9000`."
  type        = number
  default     = 9000

  validation {
    condition     = var.control_plane_mtu_policy >= 576 && var.control_plane_mtu_policy <= 9000
    error_message = " Minimum value: `576`. Maximum value: `9000`."
  }
}