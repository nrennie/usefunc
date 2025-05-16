import pandas as pd
import plotnine as gg
import matplotlib.pyplot as plt
import PyDyTuesday
import os
from pyfonts import load_font

# Load data ---------------------------------------------------------------

PyDyTuesday.get_date(date_chr)
tt_data = pd.read_csv()


# Define colours ----------------------------------------------------------

bg_col = ""
text_col = ""
highlight_col = ""


# Load fonts --------------------------------------------------------------

title_font = load_font(
   font_url="https://github.com/google/fonts/blob/main/apache/slackey/Slackey-Regular.ttf?raw=true"
)
body_font = load_font(
   font_url="https://github.com/google/fonts/blob/main/ofl/archivo/Archivo%5Bwdth%2Cwght%5D.ttf?raw=true"
)


# Data wrangling ----------------------------------------------------------



# Define text -------------------------------------------------------------

title = ""
st = ""
cap = ""


# Plot --------------------------------------------------------------------


# Save --------------------------------------------------------------------

fpath = os.path.join(yr, date_chr, f'{date_strip}.png')
g.save(fpath, height=6, width=6, units="in")
