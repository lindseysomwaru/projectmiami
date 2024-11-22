# BuildComply Project

The BuildComply project was completed for the University of Miami and focused on gathering data and automatically loading it into a database as a foundation for implementing AI for a construction permit management and submission system.

## Repository Contents

### Data Files
- **`mrc.xlsx`**: An Excel file with over 38,000 data points from the City of Miami with two sheets:
  1. **`Original`**: Raw data relating to the number of review cycles for a given plan number and discipline.
  2. **`ProcessPlans`**: Contains all the raw data with no formatting.

- **`mrc.csv`**: A CSV version of the `mrc.xlsx` data for easier processing with scripts and database imports.

### Shell Script
- **`pcsv.sh`**: A shell script for processing mrc.csv that parses the data and creates SQL insert statements for automated database loading.

### SQL Scripts
- **`mrc_table.sql`**: SQL script to create a table to store the plan number, address, and max number of review cycles. Does not include discipline-related data.

- **`discipline_table.sql`**: SQL script to create a table to handle all discipline-related data.

- **`output.sql`**: SQL queries generated from pcsv.sh.
