module DataFramesKoans

#=
    DataFrame is a data structure storing related data values.
    They are frequently used. Here is some documentation to dataframes
    and hadling CSV files in Julia:
     - https://en.wikibooks.org/wiki/Introducing_Julia/DataFrames
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
    #=
        One of the most (if not the most) useful information
        about a dataframe is the name of the columns.
        Write a function to return the names of the columns of df.
        Here is the link to the documentation to the function used:
         - https://en.wikibooks.org/wiki/Introducing_Julia/DataFrames#Basics
        Ex: df = │ Row │ A │ B │; return [ A, B]
                 ├─────┼───┼───┤
                 │ 1   │ 1 │ M │
                 │ 2   │ 2 │ F │
                 │ 3   │ 3 │ F │
                 │ 4   │ 4 │ M │
    =#
    names(df)
end

function get_first_item_name(df)
    #=
     Accessing the first and last elements of the dataframe is useful, for example,
     after applying a sorting function.
     Return the first value of the "item_name" column.
     Ex: df = │ Row │ item_name │ B │; return [ 1 ]
              ├─────┼───────────┼───┤
              │ 1   │     1     │ M │
              │ 2   │     2     │ F │
              │ 3   │     3     │ F │
              │ 4   │     4     │ M │

    =#
    first(df).item_name
end

function parse_item_price!(df)
    #=
     Frequently we need to parse the data and then convert the values
     to some specific type.
     Write a function to parse the item price, converting the values to Float64.
     Here is some links to the documentation:
      - http://www.jlhub.com/julia/manual/en/function/parse
      - http://www.jlhub.com/julia/manual/en/function/map
     Ex: df = │ Row │ item_price │ B │; return │ Row │ item_price │ B │
              ├─────┼────────────┼───┤         ├─────┼────────────┼───┤
              │ 1   │   $3.15    │ M │         │ 1   │    3.15    │ M │
              │ 2   │   $10.45   │ F │         │ 2   │    10.45   │ F │
              │ 3   │   $4.50    │ F │         │ 3   │    4.50    │ F │
              │ 4   │   $6.35    │ M │         │ 4   │    6.35    │ M │
    =#
    prices = map(price -> parse(Float64, price[2:end]), df.item_price)
    df.item_price = prices
end

function most_expensive_item(df)
    #=
     Sorting a dataframe by the values of one specific column is frequently used
     operation.
     Return the most expensive item after sorting the dataframe by the column item_price.
     Here is the link to the documention of the function used:
     - https://docs.julialang.org/en/v1/base/sort/
     Ex: df = │ Row │ item_price │ item_name │; return (name_2, 10.45)
              ├─────┼────────────┼───────────┤
              │ 1   │   $3.15    │   name_1  │
              │ 2   │   $10.45   │   name_2  │
              │ 3   │   $4.50    │   name_3  │
              │ 4   │   $6.35    │   name_4  │
    =#
    sorted_df = sort(df, :item_price, rev=true)
    item = first(sorted_df)
    (item.item_name, item.item_price)
end

function orders_with_items_more_than_amount_and_price(df, amount, price)
    #=
     Applying a filter to the dataframe and keeping the values with some condition is
     a useful tool to have a particular subset of interest from the data.
     Return the values order_id that have a item_price greater than price and quantity greater thant mount.
     The returned values shouldn't be repeated.
     Some links to the documentation:
      - https://docs.julialang.org/en/v1/base/collections/#Base.unique
      - https://docs.julialang.org/en/v1/base/collections/#Base.filter
     ex: df = │ Row │ item_price │ item_name │ quantity │ ; amount = 10; price = 10
              ├─────┼────────────┼───────────┤──────────┤
              │ 1   │   $3.15    │   name_1  │    30    │
              │ 2   │   $10.45   │   name_2  │    40    │
              │ 3   │   $4.50    │   name_1  │    10    │
              │ 4   │   $6.35    │   name_2  │     5    │

     return [ name_2 ]
    =#
    orders = filter(row -> row.item_price > price && row.quantity > amount, df)
    unique_orders = unique(orders, :order_id)
    unique_orders.order_id
end

function most_ordered_item(df)
    #=
     Return the values of the most ordered item.
     Here is the link to the documention of the function used:
     - https://docs.julialang.org/en/v1/base/sort/
     Ex: df = │ Row │ item_name │ quantity │ ;  return [ name_2 ]
              ├─────┼───────────┤──────────┤
              │ 1   │   name_1  │    30    │
              │ 2   │   name_2  │    40    │
              │ 3   │   name_1  │    10    │
              │ 4   │   name_2  │     5    │
    =#
    df_by = DataFrames.by(df, :item_name, :quantity => sum)
    df_sorted = sort(df_by, :quantity_sum)
    most_ordered = last(df_sorted)
    (most_ordered.item_name, most_ordered.quantity_sum)
end

end
