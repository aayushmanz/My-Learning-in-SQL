#  Smartphone Market Analysis Using SQL

##  Overview
This repository contains SQL queries and data analysis performed on a comprehensive smartphone dataset (`smartphones_cleaned_v6.csv`). The main objective of this project is to practice Data Manipulation Language (DML) and Data Query Language (DQL) commands to extract meaningful insights about smartphone pricing, specifications, and market trends.

## Tech Stack Used
* **Database Management System:** MySQL / MariaDB
* **IDE / Editor:** Visual Studio Code (via SQLTools Extension)
* **Dataset Format:** CSV 

---

## Dataset Preview
Below is a quick snapshot of the data structure and the type of information stored in the database:

| brand_name | model | price | rating | has_5g | processor_brand | ram_capacity | internal_memory |
|---|---|---|---|---|---|---|---|
| oneplus | OnePlus 11 5G | 54999 | 89 | TRUE | snapdragon | 12 | 256 |
| oneplus | OnePlus Nord CE 2 Lite | 19989 | 81 | TRUE | snapdragon | 6 | 128 |
| samsung | Samsung Galaxy A14 5G | 16499 | 75 | TRUE | exynos | 4 | 64 |
| motorola | Motorola Moto G62 5G | 14999 | 81 | TRUE | snapdragon | 6 | 128 |

---

## Data Dictionary (Schema)
The dataset consists of various technical specifications and features of modern smartphones. Here is a brief description of the key columns:

* **`brand_name`**: Brand of the smartphone (e.g., Samsung, Apple, OnePlus).
* **`model`**: Specific model name of the device.
* **`price`**: Current market price of the phone (in INR).
* **`rating`**: Overall performance/user rating out of 100.
* **`has_5g`**: Boolean value indicating 5G network support (TRUE/FALSE).
* **`has_nfc` / `has_ir_blaster`**: Indicates the presence of NFC and IR Blaster features.
* **`processor_brand`**: The manufacturer of the CPU (e.g., Snapdragon, Bionic, Dimensity).
* **`num_cores` & `processor_speed`**: Number of CPU cores and clock speed (in GHz).
* **`battery_capacity`**: Total battery size in mAh.
* **`fast_charging_capacity`**: Charging speed supported (in Watts).
* **`ram_capacity`**: RAM available in the device (in GB).
* **`internal_memory`**: Storage capacity of the device (in GB).
* **`screen_size`**: Display size measured diagonally (in inches).
* **`refresh_rate`**: Display refresh rate (e.g., 60Hz, 90Hz, 120Hz).
* **`num_rear_cameras`**: Number of cameras on the back.
* **`os`**: Operating System (Android/iOS).

---

## Key Objectives & Queries Explored
In this project, I have written SQL queries to answer various business and technical questions, such as:
1. Identifying the top 5 most expensive 5G smartphones.
2. Filtering the best budget gaming phones (Snapdragon processors under ₹20,000).
3. Analyzing the average RAM and Battery Capacity provided by different brands.
4. Comparing the pricing strategies of Android vs. iOS devices.

*(Note: The actual SQL scripts are available in the `.sql` files within this repository).*

---
*Developed and maintained by Ayush Suthar as part of the SQL learning journey.*
