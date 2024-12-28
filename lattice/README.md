## Examples

### Example 1
1. **Histogram of Ozone values:**
   - Displayed the histogram of `Ozone` values from the `airquality` dataset.
   - Used 10 intervals and the `count` type.

2. **Scatterplot of Ozone vs Solar Radiation:**
   - Created a scatterplot with the title "Air Quality" and labeled axes.

3. **Faceted histogram of Ozone by Month:**
   - Produced faceted histograms for `Ozone` values grouped by month.
   - Set the layout to 5 rows and 1 column.

4. **Scatterplot with groups:**
   - Generated a grouped scatterplot of `Ozone` vs `Temp`, differentiating months using colors and a legend.

---

### Task 1: `iris` Dataset
1. **Scatterplot:**
   - Plotted `Petal.Length` on the X-axis and `Sepal.Length` on the Y-axis.
   - Added a title and axis labels.

2. **Colored Scatterplot:**
   - Differentiated iris species with colors and included a legend.

3. **Histogram:**
   - Created histograms for `Petal.Width`, faceted by species.
   - Used 15 bins, displayed percentages, and applied a dark green color.

4. **3D Plot:**
   - Visualized `Petal.Width`, `Petal.Length`, and `Sepal.Length` in a 3D plot.
   - Differentiated species by color and adjusted font size and rotation.

5. **Boxplot and Violin Plot:**
   - Created boxplots of `Petal.Width` by species.
   - Modified the plot to a violin plot.

6. **Stripplot:**
   - Generated a stripplot of `Petal.Width` by species with jittered data points.

---

### Task 2: `USCancerRates` and `mtcars` Datasets
1. **Scatterplot of Cancer Rates:**
   - Plotted `rate.female` vs `rate.male` with a diagonal reference line.

2. **Boxplot:**
   - Created a boxplot of `rate.male` and `rate.female`, grouped by gender.

3. **Density Plot:**
   - Generated density plots for `rate.male` and `rate.female` with customization.

4. **Dotplots:**
   - Created dotplots for `mpg` vs `hp`, grouped by `cyl` and `am` with log-scaled axes and custom themes.

5. **Split and Layout Plots:**
   - Produced various layouts and overlays using `split()` and `position()`.

---

### Task 3: `diamonds` Dataset
1. **Conditioned Scatterplot:**
   - Plotted `carat` vs log of `depth`, conditioned by `color`.
   - Added grid lines and trend lines.

2. **Modified Panels:**
   - Customized two panels (colors E and F) with adjusted point size, shape, and color.

3. **Histogram by Groups:**
   - Created histograms of `carat` grouped by `price` into 3 equal bins, adjusting display proportions.

4. **Probability Density Histogram:**
   - Created a histogram for `price` with 8 bins showing probability density.
   - Applied overlays to modify the visual style.

5. **Combination of Plots:**
   - Created boxplots, scatterplots, and 3D plots for `price`, `carat`, and `color`.
   - Used `split()` and `position()` for layout customization.

---

## Packages Used
- **Base R**
- `tidyverse`
- `lattice`
- `latticeExtra`
- `ggplot2`
