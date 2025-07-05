# Day 05 - NULL, IS NULL, COALESCE

## ✅ Concepts Covered
- `NULL` indicates missing or unknown values.
- `IS NULL` checks for NULL values in conditions.
- `COALESCE()` returns the first non-NULL expression in the list.

## 🧠 Learning Notes
- Comparisons using `=` or `!=` don't work with NULL. Use `IS NULL` or `IS NOT NULL`.
- `COALESCE(Salary, 0)` can be used to replace NULL with a default value.
- NULLs are ignored in aggregate functions like SUM, AVG unless handled.

## 📌 Practice Table
See `Employees.sql` for sample records with NULLs.
