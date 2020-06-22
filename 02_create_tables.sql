CREATE TABLE account
(
    account_no integer NOT NULL,
    customer_id integer,
    ifsc_code varchar(30) NOT NULL,
    account_type varchar(20) NOT NULL,
    account_balance double NOT NULL,
    account_creation_date date,
    account_status boolean NOT NULL,
    CONSTRAINT pk_accno PRIMARY KEY (account_no),
    CONSTRAINT account_customer_id_fkey FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
       
);


CREATE TABLE customer
(
    customer_id integer NOT NULL,
    customer_name varchar(20)  NOT NULL,
    password varchar(20) ,
    last_login date,
    mobile_no integer,
    email_id character varying(50) ,
    CONSTRAINT pk_custid PRIMARY KEY (customer_id)
);



CREATE TABLE account_tansaction
(
    transaction_id numeric NOT NULL,
    tx_date timestamp,
    tx_details varchar(200) ,
    tx_type varchar(300) ,
    account_no numeric(16),
    tx_value numeric(10, 2),
    tx_description varchar(250) ,
    CONSTRAINT account_tansaction_pkey PRIMARY KEY (transaction_id)
);