proc check_range {value min max} {
  if {$value < $min || $value > $max} {
    error "Value is out of range" 
  }
}

check_range 10 1 100 ;#This will work fine
check_range 10 100 1 ;#This will throw an error:  expected integer but got "Value is out of range"