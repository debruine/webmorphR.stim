#' London Set Information
#'
#' A dataset containing information on the 102 faces in the Face Research Lab London Set
#'
#' @format A data frame with 102 rows and 4 variables:
#' \describe{
#'   \item{face_id}{face's ID}
#'   \item{face_gender}{face's gender (female, male)}
#'   \item{face_age}{face's age (19-47 years)}
#'   \item{face_eth}{face's ethnic group (black, east_asian, west_asian, white)}
#' }
#' @source \url{https://figshare.com/articles/dataset/Face_Research_Lab_London_Set/5047666?file=27397184}
"london_info"

#' Canada Set Information
#'
#' A dataset containing information on the 40 faces in the Young Adult White Faces with Manipulated Versions image set.
#'
#' @format A data frame with 40 rows and 3 variables:
#' \describe{
#'   \item{face_id}{face's ID}
#'   \item{face_gender}{face's gender (female, male)}
#'   \item{face_age}{face's age (17-35 years)}
#' }
#' @source \url{https://figshare.com/articles/dataset/Young_Adult_White_Faces_with_Manipulated_Versions/4220517?file=7825783}
"canada_info"

#' Rainbow Set Information
#'
#' A dataset containing information on the 18 images in the rainbow image set. These images are from [Pixabay](https://pixabay.com), all using the [Pixabay License](https://pixabay.com/service/license/), so they are free for commercial and noncommercial use without attribution.
#'
#' @format A data frame with 18 rows and 8 variables:
#' \describe{
#'   \item{photo_name}{the name of the phto inthe simulus set}
#'   \item{photo_id}{the numeric ID from Pixabay}
#'   \item{photographer}{the photographer's name}
#'   \item{user_name}{the photographer's pixabay username}
#'   \item{user_id}{the photographer's pixabay user ID}
#'   \item{colour}{the general colour of the image}
#'   \item{type}{whether the image is an animal, landscape, or flower}
#'   \item{url}{the pixabay URL for the image}
#' }
"rainbow_info"
