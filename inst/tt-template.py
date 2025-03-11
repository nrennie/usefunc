import pandas as pd
import plotnine as gg
import matplotlib.pyplot as plt
import PyDyTuesday
import os


# Load data ---------------------------------------------------------------

PyDyTuesday.get_date(date_chr)
tt_data = pd.read_csv()


# Define colours ----------------------------------------------------------

bg_col = ""
text_col = ""
highlight_col = ""

# Data wrangling ----------------------------------------------------------



# Define text -------------------------------------------------------------

title <- ""
st <- ""
cap <- ""


# Plot --------------------------------------------------------------------


# Save --------------------------------------------------------------------

fpath = os.path.join(yr, date_chr, f'{date_strip}.png')
g.save(fpath, height=6, width=6, units="in")
