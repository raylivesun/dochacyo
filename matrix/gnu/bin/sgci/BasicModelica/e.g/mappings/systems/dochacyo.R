#!/usr/bin/r

# Copyright the original author or authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

library(dplyr)
library(ggplot2)
library(tidyr)
library(lubridate)
library(readr)
library(stringr)
library(purrr)
library(tibble)
library(forcats)
library(ggrepel)
library(ggthemes)
library(scales)
library(grid)
library(gridExtra)
library(ggpubr)
library(cowplot)
library(RColorBrewer)
library(ggsci)
library(extrafont)
library(ggtext)
library(ggforce)
library(ggrepel)
library(gganimate)
library(gifski)
library(magick)
library(gifski)


theme_set(theme_bw())
theme_update(plot.title = element_text(hjust = 0.5,
                                       size = 16,
                                       face = "bold",
                                       family = "Arial"),

             plot.subtitle = element_text(hjust = 0.5,
             size = 12, # nolint
             face = "bold",
             family = "Arial"),
             plot.caption = element_text(hjust = 0.5,
             size = 10, # nolint
             face = "bold",
             family = "Arial"),
             axis.title = element_text(size = 12,
             face = "bold", # nolint
             family = "Arial"),
             axis.text = element_text(size = 10,
             face = "bold", # nolint
             family = "Arial"),
             legend.title = element_text(size = 12,
             face = "bold", # nolint
             family = "Arial"),
             legend.text = element_text(size = 10,
             face = "bold", # nolint
             family = "Arial"),
             strip.text = element_text(size = 12,
             face = "bold", # nolint
             family = "Arial"),
             panel.grid.major = element_blank(),
             panel.grid.minor = element_blank(),
             panel.border = element_blank(),
             panel.background = element_blank(),
             axis.line = element_line(colour = "black"),
             legend.position = "bottom",
             legend.direction = "horizontal",
             legend.key.size = unit(0.5, "cm"),
             legend.key.width = unit(0.5, "cm"),
             legend.key.height = unit(0.5, "cm"),
             legend.margin = margin(t = 0, r = 0, b = 0
             , l = 0, unit = "cm")) # nolint
              # nolint


font_import()
loadfonts(device = "win", quiet = TRUE)
 # nolint
 # nolint
