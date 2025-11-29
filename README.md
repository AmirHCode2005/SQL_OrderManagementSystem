# 📦 MySQL Order Management System
A complete, clean, and professional project for managing orders using MySQL.

## 🧩 Project Overview
This project is a **fully functional Order Management System** built with MySQL, featuring:

- Core tables: `Products`, `Customers`, `Orders`, `logs`
- Triggers for automatic `TotalPrice` calculation
- Triggers to log `INSERT`, `UPDATE`, and `DELETE` operations
- A professional Stored Procedure with custom error messages using `SIGNAL`
- Sample data for quick testing

The goal is to showcase SQL skills in a clean, structured, and real-world scenario, perfect for GitHub portfolios or learning purposes.

## 🎯 Why This Project Exists (Story / Lore)
Managing an online store requires precise and automated handling from customer orders to inventory adjustments.  
This system is designed to:

- Automatically calculate the total price when a new order is placed  
- Notify the user with a **custom error** if requested quantity exceeds stock  
- Automatically log all changes to orders, products, or customers in `logs`

Think of this project as a **professional warm-up exercise** before building larger systems—yet clean and structured enough for real-world use.

## ⚙️ Features

### ✔ Smart Triggers
- Automatic `TotalPrice` calculation  
- Logging operations in `logs`  
- Tracks type of operation: `INSERT`, `UPDATE`, `DELETE`

### ✔ Stored Procedure
- Adds new orders  
- Deducts product stock  
- Throws custom errors with `SIGNAL` (SQLSTATE 45000) for invalid actions  

### ✔ Sample Data
- Preloaded `Customers` and `Products` for quick testing

## 📝 Notes
- `TotalPrice` is calculated automatically via trigger, not manually  
- `logs` records all changes automatically  
- No transactions or advanced exception handlers are used (simple design for GitHub showcase)

## 📮 Contact Me

For suggestions, questions, or collaborations:

📧 **Email:**  
amirhossin6825@gmail.com

💬 **Telegram:**  
[@AmirHossin12](https://t.me/AmirHossin12)

## ⭐ Support This Project
If you find this project useful, please give it a **Star ⭐** on GitHub to help others discover it ❤️
