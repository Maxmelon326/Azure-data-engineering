-- 创建登录账户
CREATE LOGIN syn_user WITH PASSWORD = 'YourStrongPass123!';

CREATE SCHEMA analytics;

-- 创建数据库用户
CREATE USER syn_user FOR LOGIN syn_user;

-- 授权
GRANT CONTROL ON SCHEMA :: analytics TO syn_user;

Drop TABLE analytics.a1_structural_summary;

-- 创建目标表（只需一次）
CREATE TABLE analytics.a1_structural_summary (
    show_id NVARCHAR(100),
    country NVARCHAR(1000),
    rating FLOAT,
    duration NVARCHAR(100),
    genres NVARCHAR(1000),
    language NVARCHAR(100),
    release_year INT,
    date_added DATE,
    popularity FLOAT,
    platform_type NVARCHAR(20)
);



CREATE DATABASE SCOPED CREDENTIAL synapse_identity_cred
WITH IDENTITY = 'Managed Identity';


CREATE EXTERNAL DATA SOURCE netflix_datalake
WITH (
    LOCATION = 'https://netflixanalysis.blob.core.windows.net/netflixanalysis',
    CREDENTIAL = synapse_identity_cred
);


COPY INTO analytics.a1_structural_summary
FROM 'https://netflixanalysis.blob.core.windows.net/netflixanalysis/synapse/staging/a1_csv/'
WITH (
    FILE_TYPE = 'CSV',
    CREDENTIAL = (IDENTITY= 'Managed Identity'),
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    FIRSTROW = 2
);


