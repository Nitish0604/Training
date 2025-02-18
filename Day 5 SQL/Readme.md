# My SQL

## Types of databases

### 1. Relational
- MySQL
- PostgreSQL
- Oracle
- MS SQL Server

### 2. No SQL
- MongoDB
- Cassandra
- CouchDB

### 3. In Memory
- MemCached
- Redis
### 4. Graph
- Neo4J
- OrientDB
### 5. Time-Series
- db4O
- ObjectDB
### 6. NewSQL
- GoogleSpanner
- VoltDB

## Types of keys

1. Primary key
2. Foreign Key
3. Candidate Key
4. Super Key

## Normalization
It is used to remove data redundancy.

Types - 1 NF, 2 NF, 3 NF, BCNF, 4 NF, 5 NF.

### 1 NF
Each cell contains atomic (one indivisible) value.

### 2 NF
- Table is in 1 NF
- Remove partial dependencies - All non key attributes are dependent on the primary key.

### 3 NF
- Table is in 2 NF
- Remove transitive dependencies - All attributes are only dependent on the primary key.