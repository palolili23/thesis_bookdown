This is a minimal example of a book based on R Markdown and **bookdown** (https://github.com/rstudio/bookdown). Please see the page "Get Started" at https://bookdown.org/home/about/ for how to compile this example.

You can label chapter and section titles using `{#label}` after them, e.g., we can reference Chapter \@ref(intro). If you do not manually label them, there will be automatic labels anyway, e.g., Chapter \@ref(methods).

Figures and tables with captions will be placed in `figure` and `table` environments, respectively.

```{r nice-fig, fig.cap='Here is a nice figure!', out.width='80%', fig.asp=.75, fig.align='center'}
par(mar = c(4, 4, .1, .1))
plot(pressure, type = 'b', pch = 19)
```

Reference a figure by its code chunk label with the `fig:` prefix, e.g., see Figure \@ref(fig:nice-fig). Similarly, you can reference tables generated from `knitr::kable()`, e.g., see Table \@ref(tab:nice-tab).

```{r nice-tab, tidy=FALSE}
knitr::kable(
  head(iris, 20), caption = 'Here is a nice table!',
  booktabs = TRUE
)
```

You can write citations, too. For example, we are using the **bookdown** package [@R-bookdown] in this sample book, which was built on top of R Markdown and **knitr** [@xie2015].

### Structure

- title page
- 2 empty
- 3 title, rector... logos
- 4 doctoral committee and paranymphs
- 5 Manuscripts that form the basis of this thesis
- 6 Empty
- 7 Contents
- x empty

01-intro
02-statins
03-sbp
04-cancer
05-systematic review
06-competing events
07-discussion
08-epilogue
09-references
10-summary
11-Appendix
- CV
- PhD Portfolio
- Acknowledgements

- Each chapter includes Appendix with supplementary material, then References
- Each chapter has embeded figures and tables


