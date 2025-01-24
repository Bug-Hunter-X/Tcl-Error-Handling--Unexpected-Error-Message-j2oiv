proc check_range {value min max} {
  if {$min > $max} {
    error "Invalid range: min must be less than or equal to max"
  }
  if {$value < $min || $value > $max} {
    error "Value is out of range" 
  }
}

check_range 10 1 100 ;#This will work fine
check_range 10 100 1 ;#This will now throw a more user-friendly error