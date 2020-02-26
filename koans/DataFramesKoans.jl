module DataFramesKoans

#=
Links:
    - http://juliadata.github.io/DataFrames.jl/stable/man/getting_started/
    - https://github.com/JuliaData/CSV.jl

Dataset: https://github.com/justmarkham/DAT8/blob/master/data/chipotle.tsv
=#

using Pkg
Pkg.add("DataFrames")
Pkg.add("CSV")
using DataFrames
using CSV

function read_data()
    # The file you must read is called "chipotle.tsv"
    # it's located on the root of the repo
end

function get_column_names(df)
end

function get_first_item_name(df)
end

function parse_item_price!(df)
end

function most_expensive_item(df)
end

function orders_with_items_more_than_amount_and_price(df, amount, price)
end

function most_ordered_item(df)
end

end
