# Electric Vehicle Market Performance & Insights

## Project Overview
This Capstone Project delivers an end-to-end business intelligence and data analytics solution focused on the global Electric Vehicle (EV) industry. The project examines critical industry dynamics, including annual sales trajectories, manufacturer market share, battery chemistry adoption, driving range efficiencies, pricing models, and consumer sentiment across diverse vehicle categories.

The primary objective is to empower executive decision-makers with actionable, data-backed insights to guide strategic planning, vehicle portfolio optimization, and technology investments.

---

## Business Scenarios Addressed

1. **Scenario 1: Market Strategy Analysis (Emily Johnson — EV Market Strategy Director)**
   - Evaluation of sales contribution and market share across vehicle segments (Sedans, SUVs, Hatchbacks, Trucks, Buses, and Two-Wheelers).
   - Identification of high-growth product segments to guide portfolio expansion and global market penetration.

2. **Scenario 2: Competitive Intelligence & Manufacturer Benchmarking (David Chen — Automotive BI Manager)**
   - Comprehensive benchmarking of top EV manufacturers by annual volume, geographical production footprint, and customer satisfaction index.
   - Analysis of production shifts and competitive advantages in major automotive manufacturing hubs.

3. **Scenario 3: Battery Technology & Sustainability Research (Dr. Sarah Williams — Sustainable Mobility Research Analyst)**
   - Comparative evaluation of key battery chemistries (LFP, NMC, NCA, Sodium-Ion, and Solid-State) across driving range metrics and energy density.
   - Correlation analysis between battery efficiency and customer adoption to forecast sustainable mobility trends.

---

## Technical Architecture & Pipeline

```text
+-------------------------+      +-------------------------+      +-------------------------+
|     Raw Data Layer      | ---> |   Relational Database   | ---> |  Business Intelligence  |
| (Cleaned Multi-Year CSV)|      | (SQL Processing & KPIs) |      | (Tableau Viz & Stories) |
+-------------------------+      +-------------------------+      +-------------------------+
                                                                                |
                                                                                v
                                                                  +-------------------------+
                                                                  |     Web Integration     |
                                                                  |  (Flask UI Application) |
                                                                  +-------------------------+