{% macro get_vendors_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "companyname", "datatype": dbt.type_string()},
    {"name": "create_date", "datatype": dbt.type_timestamp()},
    {"name": "vendor_id", "datatype": dbt.type_float()},
    {"name": "vendor_type_id", "datatype": dbt.type_float()},
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('vendors_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}

{% macro get_netsuite2_vendors_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "category", "datatype": dbt.type_int()},
    {"name": "companyname", "datatype": dbt.type_string()},
    {"name": "datecreated", "datatype": dbt.type_timestamp()},
    {"name": "id", "datatype": dbt.type_int()},
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('vendors_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}
