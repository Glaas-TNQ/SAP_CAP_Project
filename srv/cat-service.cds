using my.vt_cap as my from '../db/schema';

service CatalogService {
     entity AnagraficaBotteghe as projection on my.AnagraficaBotteghe;
     entity AnagraficaMenu as projection on my.AnagraficaMenu;
     entity OrderItems as projection on my.OrderItems;
     entity Orders as projection on my.Orders;
     entity Customers as projection on my.Customers;


}