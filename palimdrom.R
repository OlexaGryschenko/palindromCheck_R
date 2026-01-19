

palindrom <- function(s) {
  
  chars <- strsplit(s, split = "")[[1]]
  
  
  chars_rev <- rev(chars)
  
 
  s_rev <- paste(chars_rev, collapse = "")
  
  
  if (s == s_rev) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

palindrom("abccba")
#palindrom("abcde")

# Test ------------------------------------------------------------------


library(testthat)


# Testfälle 
expect_true(palindrom("rentner"))
expect_false(palindrom("comet"))