{{ config(enabled=(var('netsuite_data_model', 'netsuite') == var('netsuite_data_model_override','netsuite2') and var('netsuite2_using_multi_calendar', true))) }}

select * 
from {{ var('netsuite2_accounting_period_fiscal_calendars') }}
