use PurchaseAppDb
go

alter table Purchases
drop constraint fk_purchase_to_user;

alter table Purchases
drop constraint fk_purchase_to_category;

alter table Purchases
drop constraint fk_purchase_to_importance;

alter table Purchases
drop constraint fk_purchase_to_place;

alter table Budgets
drop constraint fk_budget_to_user;

drop table AspNetUsers;
drop table Purchases;
drop table Budgets;
drop table Categories;
drop table Places;
drop table Importances;
