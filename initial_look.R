#library(warbleR)
library(soundecology)

# wav_files <- list.files(path = "C4", pattern = ".WAV", full.names = TRUE)
# selection_table_info <- data.frame(sound.files = wav_files, 
#                                    selec = rep(1, length(wav_files)),
#                                    start = rep(0, length(wav_files)),
#                                    end   = rep(54, length(wav_files)))
# 
# st <- selection_table(X = selection_table_info)
# 
# tmp <- readWave(wav_files[1])
# acoustic_complexity(tmp)
# ndsi(tmp)
# bioacoustic_index(tmp)
# acoustic_diversity(tmp)
# acoustic_evenness(tmp)

multiple_sounds(directory = "C4",
                resultfile = "sc_ndsi.csv",
                soundindex = "ndsi",
                no_cores = -1)
multiple_sounds(directory = "C4",
                resultfile = "sc_acoustic_complexity.csv",
                soundindex = "acoustic_complexity",
                no_cores = -1)
multiple_sounds(directory = "C4",
                resultfile = "sc_acoustic_diversity.csv",
                soundindex = "acoustic_diversity",
                no_cores = -1)
multiple_sounds(directory = "C4",
                resultfile = "sc_acoustic_evenness.csv",
                soundindex = "acoustic_evenness",
                no_cores = -1)
multiple_sounds(directory = "C4",
                resultfile = "sc_bioacoustic_index.csv",
                soundindex = "bioacoustic_index",
                no_cores = -1)
multiple_sounds(directory = "C4",
                resultfile = "sc_h.csv",
                soundindex = "H",
                no_cores = -1)

ndsi        <- read.csv("sc_ndsi.csv")
complexity  <- read.csv("sc_acoustic_complexity.csv")
diversity   <- read.csv("sc_acoustic_diversity.csv")
evenness    <- read.csv("sc_acoustic_evenness.csv")
bioacoust   <- read.csv("sc_bioacoustic_index.csv")