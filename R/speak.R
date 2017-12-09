#' Speak your input text
#'
#' @param input A string
#' @param voice An optional string matching a voice
#'
#' The complete list of voices can be found in available_voices
#'
#' @export
#'
#' @examples
#' \dontrun{
#' speak("hello world")
#' speak("Hello world", voice = "Samantha")
#' }

speak <- function(input, voice) {
  # Make sure we're on a mac
  if (!isTRUE(grepl("^darwin", R.version$os))){
    stop("Sorry, this package only works on MacOS.")
  }
  # make sure input is specified
  if (missing(input)){
    stop("Looks like you forget your input.")
  }
  # Check if a voice is specified
  if (missing(voice)){
    voice_option <- ""
  } else {
    if (voice %in% rsay::available_voices){
      voice_option <- paste("-v", voice)
    } else {
      stop("The Specified voice does not exist. Check 'available_voices' for a complete list")
    }
  }

  cleaned_input <- gsub(";", "", gsub(" -", " ", gsub('"', "", gsub("'", "", input))))
  system2("say", paste(voice_option, cleaned_input))
}
