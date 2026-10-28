# Module 5: Fundamentals of Python Programming

### Coursework Project — IIT Guwahati Data Analytics Program

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter&logoColor=white)

---

## 1. Module Overview

This module establishes a strong foundation in core programming logic using Python. The coursework focuses on essential data structures (lists, dictionaries), control flow (if/else statements, loops), functional programming concepts, and building interactive, user-facing terminal applications from scratch.

## 2. Project Breakdown

### Personal Expense Tracker Application

Developed a terminal-based interactive application in Jupyter Notebook to track, validate, and manage personal financial data. 

* **Data Entry Automation (`add_expense`):** 
  * Engineered a function to capture user inputs (date, category, amount, description).
  * Structured the incoming data into Python dictionaries and appended them to a centralized tracking list.

* **Data Validation & Cleaning (`view_expenses`):** 
  * Implemented conditional logic to scan for incomplete entries.
  * Designed rules to automatically flag and skip records missing critical fields (e.g., "Skipping - missing description") before displaying the clean records to the user.

* **Budget Tracking & Alerting (`track_budget`):** 
  * Built a dynamic calculator utilizing list comprehensions and the `sum()` function to aggregate total expenses.
  * Implemented threshold alerts to notify the user if their active spending exceeded their predefined monthly budget constraint.

* **Interactive CLI Menu (`show_menu`):** 
  * Designed a seamless, text-based navigation menu routing users to different application functions (Add, View, Track, Save, Exit) based on continuous conditional (`if/elif/else`) logic.

## 3. Tech Stack

| Skill / Tool | Application in Project | 
| ----- | ----- | 
| **Python 3.10+** | Core application programming language | 
| **Data Structures** | Lists (arrays) and Dictionaries (key-value pairs) for state management | 
| **Control Flow** | `if/elif/else` statements for validation and menu routing | 
| **Functional Logic** | Defining modular, reusable functions (`def`) | 
| **Jupyter Notebook** | Interactive development and testing environment | 

## 4. Repository File Structure

This folder contains the detailed visual report documenting the Python code cells, terminal outputs, and the verified module credential.

*(Note: Reports are provided in `.docx` format as per repository specifications.)*

```text
Mod5_Python_Basics/
│
├── Personal_Expense_Tracker_Report.docx   # Step-by-step Python code implementation and output console logs
├── Personal_Expense_Tracker.ipynb         # Python notebook
├── Certificate_Python_Basics.pdf          # Verified module completion credential
└── README.md                              # This file
```

## 5. Author

**Akansha Chowdhury**

* **Program:** Professional Certificate in Data Analytics & Generative AI (IIT Guwahati)


---
