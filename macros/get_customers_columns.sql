{% macro get_customers_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "city", "datatype": dbt_utils.type_string()},
    {"name": "companyname", "datatype": dbt_utils.type_string()},
    {"name": "country", "datatype": dbt_utils.type_string()},
    {"name": "customer_extid", "datatype": dbt_utils.type_string()},
    {"name": "customer_id", "datatype": dbt_utils.type_float()},
    {"name": "date_first_order", "datatype": dbt_utils.type_timestamp()},
    {"name": "state", "datatype": dbt_utils.type_string()},
    {"name": "zipcode", "datatype": dbt_utils.type_string()}
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('customers_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}

{% macro get_netsuite2_customers_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "accountnumber", "datatype": dbt_utils.type_string()},
    {"name": "alcoholrecipienttype", "datatype": dbt_utils.type_string()},
    {"name": "altemail", "datatype": dbt_utils.type_string()},
    {"name": "altname", "datatype": dbt_utils.type_string()},
    {"name": "altphone", "datatype": dbt_utils.type_string()},
    {"name": "assignedwebsite", "datatype": dbt_utils.type_int()},
    {"name": "balancesearch", "datatype": dbt_utils.type_float()},
    {"name": "billingratecard", "datatype": dbt_utils.type_int()},
    {"name": "billingschedule", "datatype": dbt_utils.type_int()},
    {"name": "billingtransactiontype", "datatype": dbt_utils.type_string()},
    {"name": "category", "datatype": dbt_utils.type_int()},
    {"name": "comments", "datatype": dbt_utils.type_string()},
    {"name": "companyname", "datatype": dbt_utils.type_string()},
    {"name": "contact", "datatype": dbt_utils.type_int()},
    {"name": "contactlist", "datatype": dbt_utils.type_string()},
    {"name": "creditholdoverride", "datatype": dbt_utils.type_string()},
    {"name": "creditlimit", "datatype": dbt_utils.type_float()},
    {"name": "currency", "datatype": dbt_utils.type_int()},
    {"name": "date_deleted", "datatype": dbt_utils.type_timestamp()},
    {"name": "datecreated", "datatype": dbt_utils.type_timestamp()},
    {"name": "defaultbankaccount", "datatype": dbt_utils.type_int()},
    {"name": "defaultbillingaddress", "datatype": dbt_utils.type_int()},
    {"name": "defaultorderpriority", "datatype": dbt_utils.type_float()},
    {"name": "defaultshippingaddress", "datatype": dbt_utils.type_int()},
    {"name": "draccount", "datatype": dbt_utils.type_int()},
    {"name": "email", "datatype": dbt_utils.type_string()},
    {"name": "emailpreference", "datatype": dbt_utils.type_string()},
    {"name": "emailtransactions", "datatype": dbt_utils.type_string()},
    {"name": "enddate", "datatype": dbt_utils.type_timestamp()},
    {"name": "entityid", "datatype": dbt_utils.type_string()},
    {"name": "entitynumber", "datatype": dbt_utils.type_int()},
    {"name": "entitystatus", "datatype": dbt_utils.type_int()},
    {"name": "entitytitle", "datatype": dbt_utils.type_string()},
    {"name": "externalid", "datatype": dbt_utils.type_string()},
    {"name": "fax", "datatype": dbt_utils.type_string()},
    {"name": "faxtransactions", "datatype": dbt_utils.type_string()},
    {"name": "firstname", "datatype": dbt_utils.type_string()},
    {"name": "firstorderdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "firstsaledate", "datatype": dbt_utils.type_timestamp()},
    {"name": "giveaccess", "datatype": dbt_utils.type_string()},
    {"name": "homephone", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_int()},
    {"name": "isautogeneratedrepresentingentity", "datatype": dbt_utils.type_string()},
    {"name": "isinactive", "datatype": dbt_utils.type_string()},
    {"name": "isperson", "datatype": dbt_utils.type_string()},
    {"name": "language", "datatype": dbt_utils.type_string()},
    {"name": "lastmodifieddate", "datatype": dbt_utils.type_timestamp()},
    {"name": "lastname", "datatype": dbt_utils.type_string()},
    {"name": "lastorderdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "lastsaledate", "datatype": dbt_utils.type_timestamp()},
    {"name": "leadsource", "datatype": dbt_utils.type_int()},
    {"name": "middlename", "datatype": dbt_utils.type_string()},
    {"name": "mobilephone", "datatype": dbt_utils.type_string()},
    {"name": "negativenumberformat", "datatype": dbt_utils.type_int()},
    {"name": "numberformat", "datatype": dbt_utils.type_int()},
    {"name": "oncredithold", "datatype": dbt_utils.type_string()},
    {"name": "overduebalancesearch", "datatype": dbt_utils.type_float()},
    {"name": "parent", "datatype": dbt_utils.type_int()},
    {"name": "phone", "datatype": dbt_utils.type_string()},
    {"name": "prefccprocessor", "datatype": dbt_utils.type_int()},
    {"name": "pricelevel", "datatype": dbt_utils.type_int()},
    {"name": "printoncheckas", "datatype": dbt_utils.type_string()},
    {"name": "printtransactions", "datatype": dbt_utils.type_string()},
    {"name": "probability", "datatype": dbt_utils.type_float()},
    {"name": "receivablesaccount", "datatype": dbt_utils.type_int()},
    {"name": "reminderdays", "datatype": dbt_utils.type_int()},
    {"name": "representingsubsidiary", "datatype": dbt_utils.type_int()},
    {"name": "resalenumber", "datatype": dbt_utils.type_string()},
    {"name": "salesrep", "datatype": dbt_utils.type_int()},
    {"name": "salutation", "datatype": dbt_utils.type_string()},
    {"name": "searchstage", "datatype": dbt_utils.type_string()},
    {"name": "shipcomplete", "datatype": dbt_utils.type_string()},
    {"name": "shippingcarrier", "datatype": dbt_utils.type_string()},
    {"name": "shippingitem", "datatype": dbt_utils.type_int()},
    {"name": "sourcewebsite", "datatype": dbt_utils.type_int()},
    {"name": "startdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "terms", "datatype": dbt_utils.type_int()},
    {"name": "thirdpartyacct", "datatype": dbt_utils.type_string()},
    {"name": "thirdpartycarrier", "datatype": dbt_utils.type_string()},
    {"name": "thirdpartycountry", "datatype": dbt_utils.type_string()},
    {"name": "thirdpartyzipcode", "datatype": dbt_utils.type_string()},
    {"name": "title", "datatype": dbt_utils.type_string()},
    {"name": "unbilledorderssearch", "datatype": dbt_utils.type_float()},
    {"name": "url", "datatype": dbt_utils.type_string()},
    {"name": "weblead", "datatype": dbt_utils.type_string()}
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('customers_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}
