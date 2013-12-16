
CREATE TABLE PARTY_STRUCT(
        STRUCT_TYPE_ID BIGINT NOT NULL,
        PARENT_ENTITY_ID BIGINT NOT NULL,
        CHILD_ENTITY_ID BIGINT NOT NULL,
	PRIORITY INTEGER,
	STATUS INTEGER,
	DIM_ID BIGINT,
	SCOPE_ID VARCHAR(50),
        CONSTRAINT PK_PARTY_STRUCT PRIMARY KEY(STRUCT_TYPE_ID,PARENT_ENTITY_ID,CHILD_ENTITY_ID),
        CONSTRAINT FK_PARTY_STRUCT_TYPE FOREIGN KEY(STRUCT_TYPE_ID) REFERENCES PARTY_STRUCT_TYPE(ID),
        CONSTRAINT FK_PARTY_STRUCT_PARENT FOREIGN KEY(PARENT_ENTITY_ID) REFERENCES PARTY_ENTITY(ID),
        CONSTRAINT FK_PARTY_STRUCT_CHILD FOREIGN KEY(CHILD_ENTITY_ID) REFERENCES PARTY_ENTITY(ID),
        CONSTRAINT FK_PARTY_STRUCT_DIM FOREIGN KEY(DIM_ID) REFERENCES PARTY_DIM(ID)
) engine=innodb;
