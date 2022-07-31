using DataFrames
using CSV

columnTable = (age = [12,15,34],
               height = [1.5,1.9,2.3],
               married = [true, false, true])

df_1 = DataFrame(columnTable)


# filter the DataFrame
df_2 = filter(df_1) do row
    row.married == true
end

filter(df_1) do row
    row.married == true
end

titanic_df = DataFrame(CSV.File("train.csv"))

describe(titanic_df)

# access single element
titanic_df[2,:Survived]

# access the row numbers
titanic_df[2,:]

# access range of rows
titanic_df[2:5, :]

# access multiple columns
titanic_df[2, [:Survived, :Pclass]]