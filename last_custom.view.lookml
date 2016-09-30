- view: last_custom
  sql_table_name: |
    client_program_data
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: ref_client_program_demographics
    type: int
    sql: ${TABLE}.ref_client_program_demographics

  - dimension: c_testfield_20160425
    label: "custom test"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_testfield_20160425' AS CHAR(255))

  - dimension: c_monthly_rent
    label: "Current Monthly Rent"
    type: number
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_monthly_rent' AS DECIMAL(5,2))



  sets:
      last_custom_fields:
      - c_testfield_20160425       
      - c_monthly_rent       