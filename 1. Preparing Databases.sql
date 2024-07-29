-- 1) Membuat database melalui klik kanan Databases > Create >
-- Database.. dengan nama ecommerce_miniproject

-- 2) Membuat tabel menggunakan statement CREATE TABLE dengan
--    mengikuti penamaan kolom di csv dan memastikan tipe datanya sesuai.
CREATE TABLE customers_dataset (
  customer_id varchar,
  customer_unique_id varchar,
  customer_zip_code_prefix varchar,
  customer_city varchar,
  customer_state varchar
);
CREATE TABLE sellers_dataset (
  seller_id varchar,
  seller_zip_code_prefix varchar,
  seller_city varchar,
  seller_state varchar
);
CREATE TABLE geolocation_dataset (
  geolocation_zip_code_prefix varchar,
  geolocation_lat decimal,
  geolocation_lng decimal,
  geolocation_city varchar,
  geolocation_state varchar
);
CREATE TABLE product_dataset (
	no int4 NULL,
	product_id varchar(50) NOT NULL,
	product_category_name varchar(50) NULL,
	product_name_lenght float8 NULL,
	product_description_lenght float8 NULL,
	product_photos_qty float8 NULL,
	product_weight_g float8 NULL,
	product_length_cm float8 NULL,
	product_height_cm float8 NULL,
	product_width_cm float8 NULL
);
CREATE TABLE orders_dataset (
  order_id varchar,
  customer_id varchar,
  order_status varchar,
  order_purchase_timestamp timestamp,
  order_approved_at timestamp,
  order_delivered_carrier_date timestamp,
  order_delivered_customer_date timestamp,
  order_estimated_delivery_date timestamp
);
CREATE TABLE order_items_dataset (
  order_id varchar,
  order_item_id int,
  product_id varchar,
  seller_id varchar,
  shipping_limit_date timestamp,
  price decimal,
  fright_value decimal
);
CREATE TABLE order_payments_dataset (
  order_id varchar,
  payment_sequential int,
  payment_type varchar,
  payment_installments int,
  payment_value decimal
);
CREATE TABLE order_reviews_dataset (
  review_id varchar,
  order_id varchar,
  review_score int,
  review_comment_title varchar,
  review_comment_message varchar,
  review_creation_date timestamp,
  review_answer_timestamp timestamp
);

-- 3) Mengimpor file csv ke dalam masing-masing tabel yang telah dibuat dengan
--    klik kanan pada nama tabel > Import/Export Data..

-- 4) Menentukan Primary Key dan Foreign Key untuk membuat relasi antar tabelnya,
--    Sebelumnya, memastikan Primary Key memiliki nilai unik dan tipe data sesuai
--    antara Primary Key dan Foreign Key pada dataset.
-- a) PRIMARY KEY
ALTER TABLE customers_dataset ADD CONSTRAINT customers_dataset_pkey PRIMARY KEY(customer_id);
ALTER TABLE sellers_dataset ADD CONSTRAINT sellers_dataset_pkey PRIMARY KEY(seller_id);
ALTER TABLE product_dataset ADD CONSTRAINT product_dataset_pkey PRIMARY KEY(product_id);
ALTER TABLE orders_dataset ADD CONSTRAINT orders_dataset_pkey PRIMARY KEY(order_id);
-- b) FOREIGN KEY
ALTER TABLE orders_dataset ADD FOREIGN KEY (customer_id) REFERENCES customers_dataset;
ALTER TABLE order_payments_dataset ADD FOREIGN KEY (order_id) REFERENCES orders_dataset;
ALTER TABLE order_reviews_dataset ADD FOREIGN KEY (order_id) REFERENCES orders_dataset;
ALTER TABLE order_items_dataset ADD FOREIGN KEY (order_id) REFERENCES orders_dataset;
ALTER TABLE order_items_dataset ADD FOREIGN KEY (product_id) REFERENCES product_dataset;
ALTER TABLE order_items_dataset ADD FOREIGN KEY (seller_id) REFERENCES sellers_dataset;

-- 5) Membuat ERD dengan cara klik kanan pada database analyzing_ecommerce > ERD for Database.