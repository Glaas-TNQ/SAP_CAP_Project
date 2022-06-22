namespace my.vt_cap;


entity Customers
{
key customer_id:Integer not null;
customer_name:String;
}

entity Orders
{
key order_id:Integer not null;
customer_id: Integer not null;
order_date: Date not null;
}

entity OrderItems
{
key order_id:Integer not null;
orderItem_id:Integer not null;
id_menu:Integer;
id_ristorante:Integer;
}

entity AnagraficaMenu
{
key id:Integer not null;
key id_ristorante:Integer;
ristorante:Association to AnagraficaBotteghe;  
categoria:String;
nome:String;
prezzo:Integer;
currency:String;
}

entity AnagraficaBotteghe
{
key id:Integer;
menu:Association to many AnagraficaMenu on menu.ristorante= $self;
comune:String;
provincia:String;
tipologia:String;
nome:String;
Via:String;
citta:String;
CAP:String(5);
mail:String;
telefono:String;
}