import os
import pandas as pd
import matplotlib.pyplot as plt 

BASE_DIR   = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA_PATH  = os.path.join(BASE_DIR, "data" , "sample_sales.csv")
OUTPUT_DIR = os.path.join(BASE_DIR , "outputs")
CHART_DIR  = os.path.join(OUTPUT_DIR , "charts")

os.makedirs(CHART_DIR, exist_ok=True)

# Load the sales data from the CSV file
def Load_Sales_Data(path:str) -> pd.DataFrame:
    df = pd.read_csv(path, encoding="cp1252")
    df["Order Date"] = pd.to_datetime(df["Order Date"])
    return df

# clean the data by removing rows with missing values
def Clean_Sales_Data(df:pd.DataFrame) -> pd.DataFrame:
    df = df.drop_duplicates()
    df = df.dropna()
    df["Sales"] = df["Sales"].astype(float)
    df["Quantity"] = df["Quantity"].astype(int)
    return df

# region wise sales analysis
def Region_Wise_Sales_Analysis(df:pd.DataFrame) -> pd.DataFrame:
    result = df.groupby("Region" , as_index=False)["Sales"].sum().sort_values("Sales",ascending=False)
    result.to_csv(os.path.join(OUTPUT_DIR , "region_Wises_Sales.csv"),index=False)
    return result

# top 10 products by sales
def Top_Products_By_Sales(df:pd.DataFrame) -> pd.DataFrame:
    result = df.groupby("Product Name" , as_index=False)["Sales"].sum().sort_values("Sales", ascending = False).head(10)
    result.to_csv(os.path.join(OUTPUT_DIR , "top_10_products_by_sales.csv"),index=False)
    return result

# monthly sales trend analysis
def Monthly_Sales_Trend_Analysis(df:pd.DataFrame) -> pd.DataFrame:
    df["Month"] = df["Order Date"].dt.to_period("M").astype(str)
    result = df.groupby("Month" , as_index=False)["Sales"].sum().sort_values("Month")
    result.to_csv(os.path.join(OUTPUT_DIR , "monthly_sales_trend.csv"),index=False)
    return result

#plot region sales
def Plot_Region_Sales(df:pd.DataFrame) -> None:
    plt.figure(figsize=(10,6))
    plt.bar(df["Region"], df["Sales"], color="skyblue")
    plt.title("Region Wise Sales")
    plt.xlabel("Region")
    plt.ylabel("Total Sales")
    plt.tight_layout()
    plt.savefig(os.path.join(CHART_DIR , "region_wise_sales.png"))
    plt.close()

#plot top products by sales
def Plot_Top_Products_By_Sales(df:pd.DataFrame) -> None:
    plt.figure(figsize=(10,6))
    plt.bar(df["Product Name"], df["Sales"], color="salmon")
    plt.title("Top 10 Products by Sales")
    plt.xlabel("Product")
    plt.ylabel("Total Sales")
    plt.xticks(rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig(os.path.join(CHART_DIR , "top_10_products_by_sales.png"))
    plt.close()

#plot monthly sales trend
def Plot_Monthly_Sales_Trend(df:pd.DataFrame) -> None:
    plt.figure(figsize=(10,6))
    plt.plot(df["Month"], df["Sales"], marker="o", color="green")
    plt.title("Monthly Sales Trend")
    plt.xlabel("Month")
    plt.ylabel("Total Sales")
    plt.tight_layout()
    plt.savefig(os.path.join(CHART_DIR , "monthly_sales_trend.png"))
    plt.close()

def main():
    df = Load_Sales_Data(DATA_PATH)
    df = Clean_Sales_Data(df)

    print("\n first 5 rows :")
    print(df.head())

    print("\n Dataset info :")
    print(df.info())

    print("\n Summary statistics :")
    print(df.describe())

    region_df = Region_Wise_Sales_Analysis(df)
    top_products_df = Top_Products_By_Sales(df)
    Monthly_df = Monthly_Sales_Trend_Analysis(df)

    print("\n Region Wise Sales Analysis :")
    print(region_df)

    print("\n Top 10 Products by Sales :")
    print(top_products_df)

    print("\n Monthly Sales Trend Analysis :")
    print(Monthly_df)

    Plot_Region_Sales(region_df)
    Plot_Top_Products_By_Sales(top_products_df)
    Plot_Monthly_Sales_Trend(Monthly_df)

    print("\n Analysis completed successfully. Charts and CSV files have been saved in the output directory.")

if __name__ == "__main__" :
    main()