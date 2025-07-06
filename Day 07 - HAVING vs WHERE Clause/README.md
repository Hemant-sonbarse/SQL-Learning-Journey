# Day 07 - HAVING vs WHERE Clause

## ✅ Concepts Covered
- `WHERE` filters rows **before** aggregation
- `HAVING` filters **after** aggregation (on grouped results)
- Can use both `WHERE` and `HAVING` in a single query

## 🧠 Learning Notes
- Use `WHERE` for conditions on individual rows (e.g., salary > 50000)
- Use `HAVING` for conditions on grouped/aggregated results (e.g., COUNT(*) > 1)
- You must use `GROUP BY` when using `HAVING` with aggregates

## 📌 Practice Table
See `Employees.sql` in this folder.
