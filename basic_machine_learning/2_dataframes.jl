using DataFrames

columnTable = (age = [12,15,34],
               height = [1.5,1.9,2.3],
               married = [true, false, true])

df_1 = DataFrame(columnTable)


# filter the DataFrame
filter(df_1) do row
    row.married == true
end