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
    DataFrame(CSV.File("chipotle.tsv"))
end

function get_column_names(df)
    names(df)
end

function get_first_item_name(df)
    first(df).item_name
end

function parse_item_price!(df)
    prices = map(price -> parse(Float64, price[2:end]), df.item_price)
    df.item_price = prices
end

function most_expensive_item(df)
    sorted_df = sort(df, :item_price, rev=true)
    item = first(sorted_df)
    (item.item_name, item.item_price)
end

function orders_with_items_more_than_amount_and_price(df, amount, price)
    orders = filter(row -> row.item_price > price && row.quantity > amount, df)
    unique_orders = unique(orders, :order_id)
    unique_orders.order_id
end

function most_ordered_item(df)
    df_by = DataFrames.by(df, :item_name, :quantity => sum)
    df_sorted = sort(df_by, :quantity_sum)
    most_ordered = last(df_sorted)
    (most_ordered.item_name, most_ordered.quantity_sum)
end

end
