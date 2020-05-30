
# Visualising Electricity Usage

# Task 1
# Electricity data is stored in a file named electricity.mat. Load that MAT-file into MATLAB
# Then enter usage in the script to see the matrix

load electricity
usage

# Task 2
# One of the elements in the usage variable has a value of NaN. Replace this value with the value 2.74
usage(2,3) = 2.74

# Task 3
# The residential data is stored in the first column
res = usage(:,1)

# Task 4
# The commercial data is stored in the second column.
# The industrial data is stored in the third column. 
comm = usage(:,2)
ind = usage(:,3)

# Task 5
# The usage data was collected annually between the years 1991 to 2013. 
# The yrs variable you create will help you to plot the data over a meaningful range.
yrs = (1991:2013)'

# Task 6
# Plot res (y-axis) against yrs (x-axis) with a blue (b) dashed line (--).
# Plot comm (y-axis) against yrs (x-axis) with a black (k) dotted line (:).
# Plot ind (y-axis) against yrs (x-axis) with a magenta (m) dash-dot line (-.).

plot(yrs,res,"b--")
hold on
plot(yrs,comm,"k:")
plot(yrs,ind,"m-.")
hold off


# Task 7
# Add the title 'July Electricity Usage' to the existing plot.
#Add the legend values 'res', 'comm', and 'ind' to the existing plot.

title("July Electricity Usage")
legend("res","comm","ind")

