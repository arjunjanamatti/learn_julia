using Pkg
Pkg.add("MLJ")
using MLJ
using DataFrames
using CSV

scitype(3)

titanic_df = DataFrame(CSV.File("train.csv"))

# like head for first 5 rows
first(titanic_df, 5)

# size of DataFrame
size(titanic_df)

# descriptive statistics
describe(titanic_df)

(schema(titanic_df))

# if we want to change the schema type for a example column
# coerce(titanic_df, :Sex => Count)

# function to handle missing data in class column
function class_missing(n)
    if ismissing(n)
        return "without cabin"
    else
        return "has cabin"
    end
end

# ByRow will go row by row like lambda
titanic_df_1 = DataFrames.transform(titanic_df, :Cabin => ByRow(class_missing) => :Cabin)

# get value counts
combine(groupby(titanic_df_1, :Cabin), nrow)

size(titanic_df_1)

