library(dplyr)
library(tidyverse)

LINES_TO_GUESS_TYPES = 1000
INPUT_DIR = 'input'

INSECT_GENERIC_EXCLUSIONS = c('Any_Butterfly', 'Any_Bumblebee', 'Any_Hoverfly')
BUMBLEBEE_GENERIC_EXCLUSIONS = c('Any_White_tailed_bumblebee', 'Any_Red_tailed_bumblebee')

read_input_csv = function(filename) {
  read_csv(paste(INPUT_DIR, filename, sep = '/'), guess_max = LINES_TO_GUESS_TYPES, show_col_types = FALSE)
}

to_presence_dataframe = function(presence_data) {
  presence_data %>% dplyr::mutate(present = T) %>% pivot_wider(id_cols = title, names_from = species, values_from = present, values_fill = F)
}

include_sites_with_no_presence_record = function(presence_df, all_plot_titles) {
  sites_with_no_records = data.frame(title = data.frame(title = all_plot_titles) %>% filter(!(title %in% presence_df$title)) %>% dplyr::select(title))
  species_names = colnames(presence_df)[-1]
  for(species_name in species_names) {
    sites_with_no_records[species_name] = F
  }
  
  rbind(presence_df, sites_with_no_records)
}

tranpose_cluster_df = function(df) {
  df %>% 
    pivot_longer(!k, names_to = "title", values_to = "col2") %>% 
    pivot_wider(names_from = "k", values_from = "col2")
}
