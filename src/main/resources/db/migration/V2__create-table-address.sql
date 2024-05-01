CREATE TABLE address (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   street VARCHAR(255),
   zip_code VARCHAR(255),
   number INTEGER NOT NULL,
   city VARCHAR(255),
   state VARCHAR(255),
   main BOOLEAN NOT NULL,
   person_id BIGINT,
   CONSTRAINT pk_address PRIMARY KEY (id)
);

ALTER TABLE address ADD CONSTRAINT FK_ADDRESS_ON_PERSON FOREIGN KEY (person_id) REFERENCES person (id);