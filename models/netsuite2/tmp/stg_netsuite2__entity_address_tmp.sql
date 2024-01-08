{{ config(enabled=(var('netsuite_data_model', 'netsuite') == var('netsuite_data_model_override','netsuite2') and var('netsuite2__using_entities_data', true))) }}

select * 
from {{ var('netsuite2_entity_address') }}
