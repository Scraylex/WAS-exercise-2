# Task 3 Findings

## 1) What is the anomaly that occurs when solving the problem in the domain?

The planner may take an unnecessarily long path.

## 2) Under what circumstances does the anomaly occur?

Usage of the EHS algorithm for plan building.

## 3) What specifically in the problem and the domain make it susceptible?

Because ehs enforces the most optimal solution for a given condition. This leads to the condition ```(at ?s)``` becoming enforced as ?s actually being of type storage and not of a derived type.

## 4) Why is the behavior not observable with your planner implementation from Task 2?

Because the A* algorithm wants to find the shortest path and not the most optimal set of solutions for given conditions.
