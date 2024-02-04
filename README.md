# SQL--Case-Study-1-Dannys-Diner

<p align="center">
    <img src='''https://github.com/ritobrotoghosh/SQL--Case-Study-1-Dannys-Diner/blob/main/Danny's%20Diner.png''' height="400">
</p>

## Introduction

Danny has a deep love for Japanese food. In the beginning of 2021, he took a bold step and opened a charming little restaurant featuring his top three favorite dishes: sushi, curry, and ramen. Now, Danny's Diner requires assistance to stay afloat. Despite collecting some basic data during the initial months of operation, the restaurant is unsure how to leverage that information to improve their business. They are seeking help to analyze and utilize the data effectively.

## Problem Statement

Danny is eager to understand more about his customers by using the collected data to answer some simple questions. He wants insights into their visiting patterns, how much money they've spent, and their favorite menu items. Building a deeper connection with his customers will enable him to provide a better and more personalized experience for his loyal patrons.

With these insights, Danny aims to make informed decisions about expanding the existing customer loyalty program. Additionally, he needs assistance in creating basic datasets that his team can easily inspect without requiring SQL expertise.

To maintain privacy, Danny has provided a sample of his overall customer data, trusting that these examples will be sufficient to craft fully functioning SQL queries to address his queries.

## Dataset

Danny has shared 3 key datasets for this case study:

- sales
- menu
- members

**Table 1: sales**

The sales table contains detailed information about individual customer purchases, including customer_id, order_date, and product_id. This data allows us to track when customers made purchases and which specific menu items they ordered.

**Table 2: menu**

The menu table serves as a reference, linking each product_id to its corresponding product_name and price. This mapping helps identify and associate the actual names and prices of each menu item.

**Table 3: members**

The members table records important details about customers who joined the beta version of Danny's Diner loyalty program. It includes information such as the customer_id and the join_date, indicating when each customer became a member.

## Entity Relationship Diagram

<p align="center">
    <img src='https://github.com/ritobrotoghosh/SQL--Case-Study-1-Dannys-Diner/blob/main/Entity%20Relationship%20Diagram.png' height="400">
</p>

## Case Study Questions

- What is the total amount each customer spent at the restaurant?
- How many days has each customer visited the restaurant?
- What was the first item from the menu purchased by each customer?
- What is the most purchased item on the menu and how many times was it purchased by all customers?
- Which item was the most popular for each customer?
- Which item was purchased first by the customer after they became a member?
- Which item was purchased just before the customer became a member?
- What are the total items and amount spent for each member before they became a member?
- If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
- In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?
