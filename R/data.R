#' London Set Information
#'
#' A dataset containing information on the 102 faces in the Face Research Lab London Set. Corresponds to demo sets `load_stim_neutral()` and`load_stim_smiling()`.
#'
#' @format A data frame with 102 rows and 4 variables:
#' \describe{
#'   \item{face_id}{face's ID}
#'   \item{face_gender}{face's gender (female, male)}
#'   \item{face_age}{face's age (19-47 years)}
#'   \item{face_eth}{face's ethnic group (black, east_asian, west_asian, white)}
#' }
#' @source \url{https://figshare.com/articles/dataset/Face_Research_Lab_London_Set/5047666?file=27397184}
#' @examples
#' head(london_info)
"london_info"

#' Canada Set Information
#'
#' A dataset containing information on the 40 faces in the Young Adult White Faces with Manipulated Versions image set. Corresponds to demo set `load_stim_canada()`.
#'
#' @format A data frame with 40 rows and 3 variables:
#' \describe{
#'   \item{face_id}{face's ID}
#'   \item{face_gender}{face's gender (female, male)}
#'   \item{face_age}{face's age (17-35 years)}
#' }
#' @source \url{https://figshare.com/articles/dataset/Young_Adult_White_Faces_with_Manipulated_Versions/4220517?file=7825783}
#' @examples
#' head(canada_info)
"canada_info"

#' Rainbow Set Information
#'
#' A dataset containing information on the 18 images in the rainbow image set `load_stim_rainbow()`. These images are from [Pixabay](https://pixabay.com), all using the [Pixabay License](https://pixabay.com/service/license/), so they are free for commercial and noncommercial use without attribution.
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
#' @examples
#' head(rainbow_info)
"rainbow_info"


#' 3DSK Average Ratings
#'
#' A dataset containing information on the 100 images in the 3dsk image set `load_stim_3dsk()`. These images are from [www.3D.sk](https://www.3D.sk), purchased by Lisa DeBruine and Benedict Jones under their [commercial license](https://www.3d.sk/static/commercial-terms), which allows for sharing and publication of derivative images for educational use. Ratings are from 100 male and 100 female raters for each face_gender:trait on a scale from 1-7. See `raw_3dsk_info` for the unaggregated data and further details.
#'
#' @format A data frame with 100 rows and 8 variables:
#' \describe{
#'   \item{face_id}{the name ID from 3d.sk}
#'   \item{face_gender}{face's gender (female, male)}
#'   \item{face_age}{the face's age (in years)}
#'   \item{att}{mean attractiveness rating}
#'   \item{dom}{mean dominance rating}
#'   \item{health}{mean health rating}
#'   \item{sexdim}{mean sexual dimorphism rating; masculinity for male faces and femininity for female faces}
#'   \item{trust}{mean trustworthiness rating}
#' }
#' @source \url{https://doi.org/10.17605/OSF.IO/A3947}
#' @examples
#' head(avg_3dsk_info)
"avg_3dsk_info"


#' 3DSK Raw Ratings
#'
#' A dataset containing information on the 100 images in the 3dsk image set `load_stim_3dsk()`. These images are from [www.3D.sk](https://www.3D.sk), purchased by Lisa DeBruine and Benedict Jones under their [commercial license](https://www.3d.sk/static/commercial-terms), which allows for sharing and publication of derivative images for educational use.
#'
#' @details
#' Face images were rated online at faceresearch.org. Raters were randomly allocated to rate either the 50 male or 50 female faces for one of attractiveness, dominance, health, sexual dimorphism (masculinity/femininity), or trustworthiness using 1 (much less *trait adjective* than average) to 7 (much more *trait adjective* than average). Male faces were rated for masculinity and female faces for femininity.
#'
#' Data are from the first one hundred heterosexual men and one hundred heterosexual women between the ages of 18 and 40 rating each combination of face gender and trait (2000 raters in total). Trial order was fully randomised for each rater and the rating tasks were self paced.
#'
#' @format A data frame with 100000 rows and 8 variables:
#' \describe{
#'   \item{face_id}{the name ID from 3d.sk}
#'   \item{face_gender}{face's gender (female, male)}
#'   \item{face_age}{the face's age (in years)}
#'   \item{rater_id}{the rater's anonymous ID}
#'   \item{rater_gender}{rater's gender (female, male)}
#'   \item{rater_age}{the rater's age (in years)}
#'   \item{trait}{trait being rated (att, dom, health, sexdim, trust)}
#'   \item{rating}{rating on a 1-7 scale}
#' }
#' @source \url{https://doi.org/10.17605/OSF.IO/A3947}
#' @examples
#' head(raw_3dsk_info)
"raw_3dsk_info"
