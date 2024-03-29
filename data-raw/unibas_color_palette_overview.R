## code to prepare `unibas_color_palette_overview` dataset goes here

unibas_color_palette_overview <-
  tibble::tibble(
    col_num = seq_len(10),
    name = c("mint",
             "mintdark",
             "greydark",
             "grey",
             "reddark",
             "redlight",
             "greylight",
             "tuerkis",
             "black",
             "white"),
             rgb_value = list(
               list(165, 215, 210),
               list(30, 165, 165),
               list(45, 55, 60),
               list(140, 145, 150),
               list(210, 5, 55),
               list(235, 130, 155),
               list(190, 195, 200),
               list(0, 110, 110),
               list(0, 0, 0),
               list(255, 255, 255)
             )
  ) %>%
  dplyr::mutate(hex_value = purrr::map_chr(rgb_value,
                                           ~grDevices::rgb(.x[1], .x[2], .x[3], maxColorValue = 255)))



usethis::use_data(unibas_color_palette_overview, overwrite = TRUE)
